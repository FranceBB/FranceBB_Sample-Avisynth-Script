blur(0, 1.58) #Always blur vertically before interlacing
ConvertFPS(50)
LanczosResize(720,576) #anamorphic
assumeTFF() #for TFF-output, assumebff() for BFF-output
separatefields()
selectevery(4,0,3)
weave()
