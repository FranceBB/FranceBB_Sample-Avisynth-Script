Luma and Chroma Vectorscope (default):
TurnRight.Histogram.TurnLeft #luma
Histogram("color2") #chroma
________________________________________________________
Luma:
TurnRight.Histogram.TurnLeft 
#luma 0-255 standard (grayscale), out of standard (brown)
#green Y=128
________________________________________________________
Chroma:
Histogram("color2")
________________________________________________________
Luma Map:
Histogram("luma")
________________________________________________________
Audio:
Histogram("stereo") #audio-phase
Histogram("audiolevels") #audio level ch
________________________________________________________
Luma and Chroma (old VDub):
converttorgb32() #works in RGB only
VD_clrtools(mode=0,red=false,green=false,blue=false)
VD_clrtools(mode=4)
________________________________________________________
Luma and Chroma (bad):
ConverttoYUY2() #works in YUY2 only
VideoScope(DrawMode="both", HistoTypeSide="Y", HistoTypeBottom="UV", FrameType="colormap")

LanczosResize(848, 480)
_________________________________________________________
TimeCodes and frame number:
ShowSMPTE()
ShowFrameNumber()

_________________________________________________________
Tektronix-like VideoScope:

VideoTek()