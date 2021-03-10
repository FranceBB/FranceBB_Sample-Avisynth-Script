blur(0, 1.00) #Always blur vertically before interlacing
ConvertFPS(60)
LanczosResize(720,480) #anamorphic
assumeTFF() #for TFF-output, assumebff() for BFF-output
separatefields()
selectevery(4,0,3)
weave()
