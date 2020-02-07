import sys
import random
from PySide2.QtUiTools import QUiLoader
from PySide2.QtWidgets import QApplication
from PySide2.QtCore import QFile, Slot
from PySide2 import QtGui, QtCore, QtWidgets, Qt
from pixel import PixelScene

window = None

def set_pixel_color(x, y, color):
    i = (int(x) * 16) + int(y)
    px = window.findChild(QtWidgets.QGraphicsView, "graphicsView_" + str(i))
    px.scene().set_color(color)

def get_pixel_color(x, y):
    i = (int(x) * 16) + int(y)
    px_scene = window.findChild(QtWidgets.QGraphicsView, "graphicsView_" + str(i)).scene()
    return px_scene.backgroundBrush().color()

@Slot()
def handle_button_press():
    print("Button clicked, Hello!")

@Slot()
def handle_red_edit():
    print("Edit finished for red")
    label = window.findChild(QtWidgets.QLabel, "xy_label")
    red_field = window.findChild(QtWidgets.QLineEdit, "red_field")
    x, y = label.text().strip("(").strip(")").split(", ")
    color = get_pixel_color(x, y)
    new_color = QtGui.QColor(int(red_field.text()), color.green(), color.blue(), 255)
    set_pixel_color(x, y, new_color)

@Slot()
def handle_green_edit():
    print("Edit finished for green")
    label = window.findChild(QtWidgets.QLabel, "xy_label")
    green_field = window.findChild(QtWidgets.QLineEdit, "green_field")
    x, y = label.text().strip("(").strip(")").split(", ")
    color = get_pixel_color(x, y)
    new_color = QtGui.QColor(color.green(), int(green_field.text()), color.blue(), 255)
    set_pixel_color(x, y, new_color)

@Slot()
def handle_blue_edit():
    print("Edit finished for blue")
    label = window.findChild(QtWidgets.QLabel, "xy_label")
    blue_field = window.findChild(QtWidgets.QLineEdit, "blue_field")
    x, y = label.text().strip("(").strip(")").split(", ")
    color = get_pixel_color(x, y)
    new_color = QtGui.QColor(color.red(), color.green(), int(blue_field.text()), 255)
    set_pixel_color(x, y, new_color)

def load_pixel_frame(pf):
    for i in range(0, 256):
        x = int(i/16)
        y = (i % 16)

        color = QtGui.QColor(pf.red[i], pf.green[i], pf.blue[i], 255)
        set_pixel_color(x, y, color)
    
    # Reset x,y & RGB values
    label = window.findChild(QtWidgets.QLabel, "xy_label")
    label.setText("(none)")
    red_field = window.findChild(QtWidgets.QLineEdit, "red_field")
    red_field.setText("")
    green_field = window.findChild(QtWidgets.QLineEdit, "green_field")
    green_field.setText("")
    blue_field = window.findChild(QtWidgets.QLineEdit, "blue_field")
    blue_field.setText("")

if __name__ == "__main__":
    app = QApplication(sys.argv)

    ui_file = QFile("test_app.ui")
    ui_file.open(QFile.ReadOnly)

    loader = QUiLoader()
    window = loader.load(ui_file)
    ui_file.close()

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

    # Set up buttons
    play_button = window.findChild(QtWidgets.QPushButton, "play_button")
    play_button.clicked.connect(handle_button_press)

    # Set up line edit fields
    rgb_validator = QtGui.QIntValidator(0, 255)

    red_field = window.findChild(QtWidgets.QLineEdit, "red_field")
    red_field.editingFinished.connect(handle_red_edit)
    red_field.setValidator(rgb_validator)

    green_field = window.findChild(QtWidgets.QLineEdit, "green_field")
    green_field.editingFinished.connect(handle_green_edit)
    green_field.setValidator(rgb_validator)

    blue_field = window.findChild(QtWidgets.QLineEdit, "blue_field")
    blue_field.editingFinished.connect(handle_blue_edit)
    blue_field.setValidator(rgb_validator)

    window.setWindowTitle("Kala Pixel Planner")
    window.show()

    sys.exit(app.exec_())