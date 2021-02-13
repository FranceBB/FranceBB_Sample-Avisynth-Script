#8bit, 10bit, 12bit, 14bit, 16bit, 32bit planar
CAS(sharpness=1, y=3, u=3, v=3)

#8bit, 10bit, 12bit, 14bit, 16bit, 32bit planar

SeeSaw(Sstr=3.0, Spower=8)

#8bit planar only

LSFmod(strength=200, Smethod=3, kernel=19, Smode=1, Szrp=16, Spwr=4, SdmpLo=0, SdmpHi=0, Lmode=1, keep=100, soft=0, edgemode=0, edgemaskHQ=true, show=false)

asharp(T=2, D=4, B=-1, hqbf=false)

TUnsharp(strength=100, thresholdL=2, thresholdU=40, type=1, map=0, lim=2, radius=3, gui=false)

#details-enhancer
Blockbuster(method="sharpen", strength=100)

_________________________________________________________
#8bit - 10bit - 12bit - 14bit - 16bit planar

aWarpSharp2(thresh=180, blur=3, type=0, depth=35, depthC=10, chroma=4)
_________________________________________________________
#16bit interleave

MCLS_16(strength=1.0, thsad=400, plane=0, ss=1.25, repair=true, dmode=1, blur_gaussian=false) 

BicubicSharp(r=2.0, edges=0.5, g=2.2, wg=5.0, bl=0.0, str=0.5, mode=1, bitdepth=16) #soft

BicubicSharp(r=2.0, edges=0.5, g=2.2, wg=5.0, bl=8.0, str=1.8, mode=1, bitdepth=16) #strong

#16bit stack (dithertool)

RKS(HB=true, dither=-2, Sharpen=70, Staps=3, SP=0.4, DP=0.8, LDH=4)
