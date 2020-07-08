#from 23.976 progressive to 25i PAL

AssumeFPS(23.976)
ConvertFPS(60)
LanczosResize(720,480) #anamorphic
assumeTFF() #for TFF-output, assumebff() for BFF-output
separatefields()
selectevery(4,0,3)
weave()

#encoder: MPEG-2 (mpeg2enc) - AC3 (Aftern) - MPEG-PS (A+V) .ps | flag 4:3 or 16:9 - flag interlaced TFF