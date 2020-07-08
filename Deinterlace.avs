#Deinterlace DVD 720x480 to 1280x720 progressive

tdeint(mode=2, order=-1, field=-1, mthreshL=6, mthreshC=6, map=0, type=2, debug=false, mtnmode=1, sharp=true, cthresh=6, blockx=16, blocky=16, chroma=true, MI=64, tryWeave=true, link=1, denoise=true, slow=2, opt=4)

crop(4,0,-4,0)
Normalize(0.22)
AddBorders(106,0,106,0)
Spline36Resize(1280, 720)

#Another Deinterlace filter (double frame rate)

QTGMC(Preset="placebo", Sharpness=1.00) 