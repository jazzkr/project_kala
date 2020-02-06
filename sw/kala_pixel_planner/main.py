import sys
import random
from PySide2.QtUiTools import QUiLoader
from PySide2.QtWidgets import QApplication
from PySide2.QtCore import QFile, Slot
from PySide2 import QtGui, QtCore, QtWidgets, Qt
from pixel import PixelScene

@Slot()
def handle_button_press():
    print("Button clicked, Hello!")


if __name__ == "__main__":
    app = QApplication(sys.argv)

    ui_file = QFile("test_app.ui")
    ui_file.open(QFile.ReadOnly)

    loader = QUiLoader()
    window = loader.load(ui_file)
    ui_file.close()

    # Load pixels as QGraphicsScene objects
    for i in range(0, 256):
        try:
            x = int(i/16)
            y = (i % 16)

            px = window.findChild(QtWidgets.QGraphicsView, "graphicsView_" + str(i))
            px_scene = PixelScene(i, x, y, QtGui.QColor(255, 255, 255, 255))
            px_scene.setParent(window)
            px.setScene(px_scene)

            #pixels[x][y] = px_scene
            print("Setting x, y: ", x, y)
        except Exception as e:
            print(f"Failed to set pixel at {i}")
            print(e)

    # Set up buttons
    play_button = window.findChild(QtWidgets.QPushButton, "play_button")
    play_button.clicked.connect(handle_button_press)

    window.setWindowTitle("Kala Pixel Planner")
    window.show()

    sys.exit(app.exec_())