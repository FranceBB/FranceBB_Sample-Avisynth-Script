#8bit, 10bit, 12bit, 14bit, 16bit, 32bit planar
Resize:
PointResizeMT(1280, 720)
BilinearResizeMT(1280, 720)
BicubicResizeMT(1280, 720)
LanczosResizeMT(1280, 720)
Lanczos4ResizeMT(1280, 720)
BlackmanResizeMT(1280, 720)
Spline16ResizeMT(1280, 720)
Spline36ResizeMT(1280, 720)
Spline64ResizeMT(1280, 720)
GaussResizeMT(1280, 720)
SincResizeMT(1280, 720)
-
Reverse Upscale:
DeBilinearResizeMT(1280, 720)
DeBicubicResizeMT(1280, 720)

#8bit planar only
Autocrop(mode=0) #to automatically crop black borders
RoboCrop() #better than Autocrop

_______________________________
NNEDI3 (Upscale & Downscale using Neural Network)

#opt=1 C, opt=2 SSE2, opt=3 SSE4.1, 
#opt=4 AVX, opt=5 AVX2, opt=6 FMA3, opt=7 FMA4

#8bit, 10bit, 12bit, 14bit, 16bit, 32bit planar

nnedi3_rpow2(cshift="Spline64ResizeMT", rfactor=2, fwidth=1920, fheight=1080, nsize=4, nns=4, qual=1, etype=0, pscrn=2, threads=0, csresize=true, mpeg2=true, threads_rs=0, logicalCores_rs=true, MaxPhysCore_rs=true, SetAffinity_rs=false, opt=3)

#16 bit stacked (Dither Tool) slow

nnedi3_resize16(target_width=1920, target_height=1080, mixed=true, thr=1.0, elast=1.5, nns=4, qual=2, etype=0, pscrn=4, threads=0, tv_range=true, kernel_d="Spline", kernel_u="Spline", taps=6, f_d=1.0, f_u=2.0, sharp=0, lsb_in=true, lsb=true)

________________________________
#32bit resize (internal) - output 8bit or 16bit stacked (Dither Tool)

LinearResize(848, 480, kernel="spline64", mode=0, lsb_in=true, lsb_out=true, TVrange=true, matrix="709", matrix_out="709", cplace_in="mpeg2", cplace_out="mpeg2", NoRing=false, interlaced=false)
________________________________
SD 720x480 anamorphic to 16:9 NTSC

#Crop(left, top, -right, -bottom) 

#720x480 to 720x360 (704x360 active)

crop(8, 60, -8, -60)

LanczosResize(704, 396)

_________________________________
Round to closest even resolution for odd videos:

my_initial_width=clip.Width()
my_initial_heigth=clip.Height()

i_width = my_initial_width / 2 * 2
i_height = my_initial_heigth / 2 * 2

Spline64Resize(clip, i_width, i_height)

_________________________________
Frosty Border for automatic resize

FrostyBorders(OutWidth=3840, OutHeight=2160, Frosty=yes, Resizer="Spline64")

_________________________________
For anime only upscale with neural network (8bit planar only):

Waifu2x(nr=1, scale=2, models="C:\Programmi\AviSynth\models", jobs=4)
_________________________________
UHD 4:2:0 yv12 planar to FULL HD 4:4:4 yv24
### You need to take care of chroma alignment yourself!! ###
### For 4:2:0 MPEG-2 classic top-left src_left=-0.50, src_top=0 ###

Y = ConvertToY8(matrix="Rec709").Spline36Resize(1920, 1080, src_left=-0.50, src_top=0)
U = UToY8()
V = VToY8()
YToUV(U, V, Y)

_________________________________
FULL HD 4:2:0 yv12 planar to SD 720x576 4:4:4 yv24
### You need to take care of chroma alignment yourself!! ###
### For 4:2:0 MPEG-2 classic top-left src_left=-0.50, src_top=0 ###

Y = ConvertToY8(matrix="Rec709").Spline36Resize(960, 540, src_left=-0.50, src_top=0)
U = UToY8()
V = VToY8()
YToUV(U, V, Y)
Spline64Resize(720, 576)
