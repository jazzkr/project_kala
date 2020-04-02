
class PixelFrame:

    def __init__(self):
        self.red = []
        self.green = []
        self.blue = []

        # Populate with all white pixels to start
        for i in range(0, 256):
            self.red.append(255)
            self.green.append(255)
            self.blue.append(255)
        
        self.duration = 1
    
    def __str__(self):
        ret = ""
        for i in range(0, 256):
            ret += f"Px {i} - R: {self.red[i]} G: {self.green[i]} B: {self.blue[i]}\n"
        
        ret += f"Lengths - R: {len(self.red)} G: {len(self.green)} B: {len(self.blue)}"
        return ret
    
    def set_pixel_rgb(self, x, y, r, g, b):
        i = (int(x) * 16) + int(y)

        self.red[i] = r
        self.green[i] = g
        self.blue[i] = b
    
    def to_dict(self):
        px_frame = {}

        for i in range(0, 256):
            px = {"r": self.red[i], "g": self.green[i], "b": self.blue[i]}
            px_frame[int(i)] = px
        
        px_frame["duration"] = self.duration

        return px_frame

    def from_dict(self, data):
        self.red = []
        self.green = []
        self.blue = []

        for i in range(0, 256):
            px = data[str(i)]
            self.red.append(px["r"])
            self.green.append(px["g"])
            self.blue.append(px["b"])
        
        self.duration = data["duration"]