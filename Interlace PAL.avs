blur(0, 1.00) #Always blur vertically before interlacing
ConvertFPS(50)
LanczosResize(720,576) #anamorphic
assumeTFF() #for TFF-output, assumebff() for BFF-output
separatefields()
selectevery(4,0,3)
weave()


#UHD 50p to FULL HD 25i without aliasing
#Downscale 3840x2160 to 1920x1080 with vertical lowpass (1920x540)
UserDefined2Resize(width/2, height/4, b=80, c=-20).SincLin2Resize(width/2, height/2)
assumeTFF()
separatefields()
selectevery(4,0,3)
weave()
