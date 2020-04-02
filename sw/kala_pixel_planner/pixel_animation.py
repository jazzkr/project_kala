
import json
from pixel_frame import PixelFrame

PIXEL_FORMAT_VERSION = 1

class PixelAnimation:

    def __init__(self):
        self.frames = []
        self.add_frame(PixelFrame())
        self.current_frame = 0
        self.speed = 1
        self.version = PIXEL_FORMAT_VERSION
    
    def add_frame(self, pf):
        self.frames.append(pf)

    def delete_frame(self, pf):
        self.frames.remove(pf)
    
    def get_current_frame(self):
        return self.frames[self.current_frame]
    
    def get_next_frame(self):
        if len(self.frames) > (self.current_frame + 1):
            self.current_frame += 1
            return self.frames[self.current_frame]
        else:
            return None
    
    def get_prev_frame(self):
        if (self.current_frame - 1) >= 0:
            self.current_frame -= 1
            return self.frames[self.current_frame]
        else:
            return None

    def get_frame_by_index(self, index):
        if len(self.frames) > index:
            return self.frames[index]
        else:
            return None
    
    def to_dict(self):
        px_anim = {}
        for i in range(0, len(self.frames)):
            px_anim[int(i)] = self.frames[i].to_dict()
        
        return px_anim

    def save_to_file(self, filename):
        data = self.to_dict()
        data["info"] = {
            "length": len(self.frames),
            "speed": self.speed,
            "version": PIXEL_FORMAT_VERSION
        }
        with open(filename, "w+") as f:
            json.dump(data, f)

    def load_from_file(self, filename):
        with open(filename, "r+") as f:
            data = json.load(f)

            length = data["info"]["length"]
            self.speed = data["info"]["speed"]
            self.version = data["info"]["version"]

            self.frames = []
            self.current_frame = 0
            for i in range(0, length):
                pf = PixelFrame()
                pf.from_dict(data[str(i)])
                self.add_frame(pf)
                

