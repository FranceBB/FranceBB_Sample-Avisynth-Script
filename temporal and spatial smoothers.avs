ConvertToYUY2()

#slow as hell
TemporalSoften(4,4,8,15,2) #soft (radius, luma, chroma)

SpatialSoften(4, 4, 8) #low-range (radius, luma, chroma)

SpatialSoften(16, 4, 8) #medium range (radius, luma, chroma)

#fast

_2DCleanYUY2(interlaced=0, thresholdY=9, radiusX=2, radiusY=2, thresholdU=-1, thresholdV=-1)

#slow 
Convolution3D(matrix=1, ythresh=12, cthresh=22, t_ythresh=8, t_cthresh=8, influence=3, debug=0)


ConvertToRGB32(matrix="PC.709",interlaced=false,chromaresample="lanczos4")

#both temporal and spatial + auto-guess

ConverttoYUY2()
PeachSmoother(NoiseReduction=40, Stability=30, DoSpatial=true, Spatial=110, Dot=false, Readout=false, ShowMotion=false, Debug=false)
