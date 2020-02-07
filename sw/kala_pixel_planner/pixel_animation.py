
class PixelAnimation:

    def __init__(self):
        self.frames = []
        self.duration = 0
    
    def add_frame(self, pf):
        self.frames.append(pf)
        self.duration += pf.frames

    def save_to_file(self):
        pass

    def load_to_file(self):
        pass
