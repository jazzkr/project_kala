import sys
import random
import threading
import time
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

# Enums
PB_STATUS = {"STOPPED" : 0, "PLAYING" : 1}
EDIT_MODE = {"SELECT" : 0, "BRUSH" : 1, "ALL" : 2}

# Globals
global pb_status
pb_status = PB_STATUS["STOPPED"]

global edit_mode
edit_mode = EDIT_MODE["SELECT"]

global loaded_one_time
loaded_one_time = False

global pbt
pbt = None

global save_file
save_file = None

# Buttons
play_button = window.findChild(QtWidgets.QPushButton, "play_button")
stop_button = window.findChild(QtWidgets.QPushButton, "stop_button")
left_button = window.findChild(QtWidgets.QPushButton, "left_frame_button")
right_button = window.findChild(QtWidgets.QPushButton, "right_frame_button")
add_button = window.findChild(QtWidgets.QPushButton, "add_button")
delete_button = window.findChild(QtWidgets.QPushButton, "delete_button")
apply_button = window.findChild(QtWidgets.QPushButton, "apply_button")

# Radio Buttons
select_radio_button = window.findChild(QtWidgets.QRadioButton, "select_radio_button")
brush_radio_button = window.findChild(QtWidgets.QRadioButton, "brush_radio_button")
all_radio_button = window.findChild(QtWidgets.QRadioButton, "all_radio_button")

# Fields
red_field = window.findChild(QtWidgets.QLineEdit, "red_field")
green_field = window.findChild(QtWidgets.QLineEdit, "green_field")
blue_field = window.findChild(QtWidgets.QLineEdit, "blue_field")
transparency_field = window.findChild(QtWidgets.QLineEdit, "transparency_field")
frame_field = window.findChild(QtWidgets.QLineEdit, "frame_field")

# Menu Items
open_action = window.findChild(QtWidgets.QAction, "actionOpen")
save_as_action = window.findChild(QtWidgets.QAction, "actionSaveAs")
save_action = window.findChild(QtWidgets.QAction, "actionSave")
exit_action = window.findChild(QtWidgets.QAction, "actionExit")

# Labels
xy_label = window.findChild(QtWidgets.QLabel, "xy_label")
total_frames_label = window.findChild(QtWidgets.QLabel, "total_frames_label")

# Sliders
frame_slider = window.findChild(QtWidgets.QSlider, "frame_slider")
red_slider = window.findChild(QtWidgets.QSlider, "red_slider")
green_slider = window.findChild(QtWidgets.QSlider, "green_slider")
blue_slider = window.findChild(QtWidgets.QSlider, "blue_slider")
transparency_slider = window.findChild(QtWidgets.QSlider, "transparency_slider")

# Spin Boxes
speed_spin_box = window.findChild(QtWidgets.QSpinBox, "speed_spin_box")

# Checkboxes
loop_checkbox = window.findChild(QtWidgets.QCheckBox, "loop_checkbox")
copy_checkbox = window.findChild(QtWidgets.QCheckBox, "copy_checkbox")


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
    
    try:
        # Update RGB values for selected pixel (if something is selected)
        x, y = xy_label.text().strip("(").strip(")").split(", ")
        c = get_pixel_color(x, y)
        red_field.setText(str(c.red()))
        green_field.setText(str(c.green()))
        blue_field.setText(str(c.blue()))
    except:
        pass

def update_controls():
    global loaded_one_time

    if not loaded_one_time:
        speed_spin_box.setRange(1, 60)
    
    current_frame = loaded_animation.get_current_frame()
    total_frames = len(loaded_animation.frames)
    total_frames_label.setText(f"Total Frames: {total_frames}")
    
    frame_field.setEnabled(False)
    frame_field.setText(str(loaded_animation.current_frame + 1))

    # Left and right frame buttons
    if (total_frames - loaded_animation.current_frame) == 1:
        right_button.setEnabled(False)
    else:
        right_button.setEnabled(True)

    if (loaded_animation.current_frame == 0):
        left_button.setEnabled(False)
    else:
        left_button.setEnabled(True)
    
    # Delete frame button
    if (total_frames == 1):
        delete_button.setEnabled(False)
    else:
        delete_button.setEnabled(True)
    
    # Add frame button
    if loaded_animation.current_frame == (total_frames - 1):
        add_button.setEnabled(True)
    else:
        add_button.setEnabled(False)
    
    # Frame slider
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

    if pb_status == PB_STATUS["PLAYING"]:
        stop_button.setEnabled(True)
        play_button.setEnabled(False)
    else:
        stop_button.setEnabled(False)
        play_button.setEnabled(True)

def run_playback():
    global pb_status
    speed = speed_spin_box.value()
    try:
        print("Playback thread: START")
        next_frame = loaded_animation.get_next_frame()
        while pb_status == PB_STATUS["PLAYING"]:
            if next_frame is not None:
                load_pixel_frame(next_frame)
                update_controls()
                time.sleep(1/speed)
            else:
                break
            next_frame = loaded_animation.get_next_frame()
    except Exception as e:
        print("Playback thread: ERROR")
        print(e)
    finally:
        print("Playback thread: END")
        pb_status = PB_STATUS["STOPPED"]
        update_controls()
    
@Slot()
def handle_play_press():
    global pb_status, pbt
    pb_status = PB_STATUS["PLAYING"]
    update_controls()
        
    pbt = threading.Thread(target=run_playback)
    pbt.start()

@Slot()
def handle_stop_press():
    global pb_status, pbt
    pb_status = PB_STATUS["STOPPED"]
    update_controls()

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

@Slot()
def handle_open_action():
    global save_file
    file_name = QtWidgets.QFileDialog.getOpenFileName(None, "Open", "", "Pixel Animations (*.json)")
    if file_name[0] != None:
        load_file = file_name[0]
        loaded_animation.load_from_file(load_file)
        update_controls()
        load_pixel_frame(loaded_animation.get_current_frame())
        # For enabling save function later
        save_file = load_file

@Slot()
def handle_save_action():
    global save_file
    if save_file is None:
        handle_save_as_action()
    else:
        loaded_animation.save_to_file(save_file)

@Slot()
def handle_save_as_action():
    global save_file
    file_name = QtWidgets.QFileDialog.getSaveFileName(None, "Save", "", "Pixel Animations (*.json)")
    if file_name[0] != None:
        save_file = file_name[0]
        loaded_animation.save_to_file(save_file)


if __name__ == "__main__":

    update_controls()

    # Load all white
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

    transparency_validator = QtGui.QIntValidator(0,100)
    transparency_field.setValidator(transparency_validator)

    # Field connectors
    red_field.editingFinished.connect(set_color_from_edit_fields)
    green_field.editingFinished.connect(set_color_from_edit_fields)
    blue_field.editingFinished.connect(set_color_from_edit_fields)

    # Slider connector
    frame_slider.valueChanged.connect(handle_slider_move)

    # Menu connectors
    open_action.triggered.connect(handle_open_action)
    save_as_action.triggered.connect(handle_save_as_action)

    window.setWindowTitle("Kala Pixel Planner")
    window.show()

    sys.exit(app.exec_())