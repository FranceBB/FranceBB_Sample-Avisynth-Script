#use on very old sources only (like Super8mm)
#works in RGB only

GamMac(dither=true, LockChan=-3, Scale=2, RedMul=1.0, GrnMul=1.0, BluMul=1.0, loTh=0.0, hiTh=0.0, LockVal=128, RngLim=12, GamMax=10.0, omin=16, omax=235, Show=false, Coords=false)

Remation(xres=1280, yres=720, dQuant=10, dBlur=3, shrpstr=250, linestr=0.3)

#MPEG-2 vertical stripes fix

yv12pointsamplingnnfix(mode=2)

#Good for VHS as well

Cnr2(mode="ooo", scdthr=255.0, ln=255, lm=222, un=255, um=255, vn=255, vm=255)