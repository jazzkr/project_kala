import sys
import random
from PySide2.QtUiTools import QUiLoader
from PySide2.QtWidgets import QApplication
from PySide2.QtCore import QFile, Slot
from PySide2 import QtWidgets, QtGui
from pixel import PixelScene
from pixel_frame import PixelFrame
from pixel_animation import PixelAnimation

window = None
loaded_animation = PixelAnimation()

app = QApplication(sys.argv)

ui_file = QFile("test_app.ui")
ui_file.open(QFile.ReadOnly)

loader = QUiLoader()
window = loader.load(ui_file)
ui_file.close()

# Buttons
play_button = window.findChild(QtWidgets.QPushButton, "play_button")
stop_button = window.findChild(QtWidgets.QPushButton, "stop_button")
left_button = window.findChild(QtWidgets.QPushButton, "left_frame_button")
right_button = window.findChild(QtWidgets.QPushButton, "right_frame_button")
add_button = window.findChild(QtWidgets.QPushButton, "add_button")
delete_button = window.findChild(QtWidgets.QPushButton, "delete_button")

# Fields
red_field = window.findChild(QtWidgets.QLineEdit, "red_field")
green_field = window.findChild(QtWidgets.QLineEdit, "green_field")
blue_field = window.findChild(QtWidgets.QLineEdit, "blue_field")
frame_field = window.findChild(QtWidgets.QLineEdit, "frame_field")
duration_field = window.findChild(QtWidgets.QLineEdit, "duration_field")

# Labels
xy_label = window.findChild(QtWidgets.QLabel, "xy_label")

# Frame Slider
frame_slider = window.findChild(QtWidgets.QSlider, "frame_slider")

# Menu Items
frame_slider = window.findChild(QtWidgets.QSlider, "frame_slider")

def set_pixel_color(x, y, color):
    i = (int(x) * 16) + int(y)
    px = window.findChild(QtWidgets.QGraphicsView, "graphicsView_" + str(i))
    px.scene().set_color(color)

def get_pixel_color(x, y):
    i = (int(x) * 16) + int(y)
    px_scene = window.findChild(QtWidgets.QGraphicsView, "graphicsView_" + str(i)).scene()
    return px_scene.backgroundBrush().color()

def load_pixel_frame(pf):
    for i in range(0, 256):
        x = int(i/16)
        y = (i % 16)

        color = QtGui.QColor(pf.red[i], pf.green[i], pf.blue[i], 255)
        set_pixel_color(x, y, color)
    
    # Update RGB values for selected pixel
    x, y = xy_label.text().strip("(").strip(")").split(", ")
    c = get_pixel_color(x, y)
    red_field.setText(str(c.red()))
    green_field.setText(str(c.green()))
    blue_field.setText(str(c.blue()))


def update_controls():
    current_frame = loaded_animation.get_current_frame()
    total_frames = len(loaded_animation.frames)
    
    frame_field.setEnabled(False)
    frame_field.setText(str(loaded_animation.current_frame + 1))
    duration_field.setText(str(current_frame.duration))

    if (total_frames - loaded_animation.current_frame) == 1:
        right_button.setEnabled(False)
    else:
        right_button.setEnabled(True)

    if (loaded_animation.current_frame == 0):
        left_button.setEnabled(False)
    else:
        left_button.setEnabled(True)
    
    if (total_frames == 1):
        delete_button.setEnabled(False)
    else:
        delete_button.setEnabled(True)
    
    if loaded_animation.current_frame == (total_frames - 1):
        add_button.setEnabled(True)
    else:
        add_button.setEnabled(False)
    
    frame_slider.setMinimum(0)
    frame_slider.setSingleStep(1)
    frame_slider.setEnabled(False)
    if total_frames == 1:
        frame_slider.setEnabled(False)
        frame_slider.setMaximum(1)
    else:
        frame_slider.setEnabled(True)
        frame_slider.setMaximum(total_frames-1)
    
    frame_slider.setValue(loaded_animation.current_frame)

@Slot()
def handle_play_press():
    print("Start pressed!")

@Slot()
def handle_stop_press():
    print("Stop pressed!")

@Slot()
def handle_left_press():
    loaded_animation.get_prev_frame()
    load_pixel_frame(loaded_animation.get_current_frame())
    update_controls()

@Slot()
def handle_right_press():
    loaded_animation.get_next_frame()
    load_pixel_frame(loaded_animation.get_current_frame())
    update_controls()

@Slot()
def handle_add_press():
    new_pf = PixelFrame()
    loaded_animation.add_frame(new_pf)
    loaded_animation.current_frame += 1
    load_pixel_frame(new_pf)
    update_controls()

@Slot()
def handle_delete_press():
    print("Delete pressed!")

@Slot()
def handle_slider_move():
    loaded_animation.current_frame = frame_slider.value()
    load_pixel_frame(loaded_animation.get_current_frame())
    update_controls()

@Slot()
def set_color_from_edit_fields():
    x, y = xy_label.text().strip("(").strip(")").split(", ")
    r = int(red_field.text())
    g = int(green_field.text())
    b = int(blue_field.text())

    new_color = QtGui.QColor(r, g, b, 255)
    set_pixel_color(x, y, new_color)

    # Save to actual pixel frame
    loaded_animation.get_current_frame().set_pixel_rgb(x, y, r, g, b)

if __name__ == "__main__":

    update_controls()

    # Load pixels as PixelScene objects
    for i in range(0, 256):
        try:
            x = int(i/16)
            y = (i % 16)

            px = window.findChild(QtWidgets.QGraphicsView, "graphicsView_" + str(i))
            px_scene = PixelScene(i, x, y, QtGui.QColor(255, 255, 255, 255))
            px_scene.setParent(window)
            px.setScene(px_scene)

        except Exception as e:
            print(f"Failed to set pixel at {i}")
            print(e)

    # Button connectors
    play_button.clicked.connect(handle_play_press)
    stop_button.clicked.connect(handle_stop_press)
    left_button.clicked.connect(handle_left_press)
    right_button.clicked.connect(handle_right_press)
    add_button.clicked.connect(handle_add_press)
    delete_button.clicked.connect(handle_delete_press)

    # Field validators
    rgb_validator = QtGui.QIntValidator(0, 255)
    red_field.setValidator(rgb_validator)
    green_field.setValidator(rgb_validator)
    blue_field.setValidator(rgb_validator)
    int_validator = QtGui.QIntValidator()
    frame_field.setValidator(int_validator)
    duration_field.setValidator(int_validator)

    # Field connectors
    red_field.editingFinished.connect(set_color_from_edit_fields)
    green_field.editingFinished.connect(set_color_from_edit_fields)
    blue_field.editingFinished.connect(set_color_from_edit_fields)

    # Slider connector
    frame_slider.valueChanged.connect(handle_slider_move)

    window.setWindowTitle("Kala Pixel Planner")
    window.show()

    sys.exit(app.exec_())