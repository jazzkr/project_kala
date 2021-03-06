from PySide2.QtWidgets import QGraphicsScene
from PySide2 import QtGui, QtWidgets
import json, random

class PixelScene(QGraphicsScene):

    def __init__(self, num, x, y, color):
        QGraphicsScene.__init__(self)
        self.num = num
        self.x = x
        self.y = y
        self.color = color
        self.set_color(self.color)

    def __str__(self):
        c = self.backgroundBrush().color()
        return f"Pixel #{self.num} ({self.x}, {self.y}) - R:{c.red()} G:{c.green()} B:{c.blue()}"

    def to_dict(self):
        px = {
            "x": self.x,
            "y": self.y,
            "r": self.color.red(),
            "g": self.color.green(),
            "b": self.color.blue()
        }
        return px

    def set_color(self, color):
        self.color = color
        self.setBackgroundBrush(self.color)

    def mousePressEvent(self, event):
        print(f"{self} - mousePressEvent!")
        c = self.backgroundBrush().color()
        
        r_field = self.parent().findChild(QtWidgets.QLineEdit, "red_field")
        r_field.setText(str(c.red()))
        r_slider = self.parent().findChild(QtWidgets.QSlider, "red_slider")
        r_slider.setValue(c.red())

        g_field = self.parent().findChild(QtWidgets.QLineEdit, "green_field")
        g_field.setText(str(c.green()))
        g_slider = self.parent().findChild(QtWidgets.QSlider, "green_slider")
        g_slider.setValue(c.green())

        b_field = self.parent().findChild(QtWidgets.QLineEdit, "blue_field")
        b_field.setText(str(c.blue()))
        b_slider = self.parent().findChild(QtWidgets.QSlider, "blue_slider")
        b_slider.setValue(c.blue())

        label = self.parent().findChild(QtWidgets.QLabel, "xy_label")
        label.setText(f"({self.x}, {self.y})")

        QGraphicsScene.mousePressEvent(self, event)
    
    # def dragEnterEvent(self, event):
    #     print(f"{self} - dragEnterEvent!")
    
    # def dragLeaveEvent(self, event):
    #     print(f"{self} - dragLeaveEvent!")

    # def mouseMoveEvent(self, event):
    #     #print(f"{self} - mouseMoveEvent!")
    #     pass