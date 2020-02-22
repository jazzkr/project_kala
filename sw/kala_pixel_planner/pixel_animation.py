
import json
from pixel_frame import PixelFrame

class PixelAnimation:

    def __init__(self):
        self.frames = []
        self.total_duration = 0
        self.add_frame(PixelFrame())
        self.current_frame = 0
    
    def add_frame(self, pf):
        self.frames.append(pf)
        self.total_duration += pf.duration
    
    def delete_frame(self, pf):
        self.frames.remove(pf)
        self.total_duration -= pf.duration
    
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
            px_anim[i] = self.frames[i].to_dict()
        
        return px_anim

    def save_to_file(self, filename):
        data = self.to_dict()
        with open(filename, "w+") as f:
            json.dump(data, f)

    def load_from_file(self, filename):
        with open(filename, "r+") as f:
            data = json.load(f)
        
        print(data)

