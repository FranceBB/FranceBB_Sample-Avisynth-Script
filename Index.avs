DirectShowSource("video.avi", fps=23.976, convertfps=true, seek=true, audio=true, video=true, seekzero=false, pixel_type="AUTO")

DirectShowSource2("video.avi", fps=29.970, pixel_type="YV12")

FFmpegSource2("video.mp4", fpsnum=24000, fpsden=1001, atrack=-1, seekmode=1, rffmode=0, colorspace="YV12")

video=FFVideoSource("video.mkv", fpsnum=24000, fpsden=1001)
audio=FFAudioSource("audio.dts")
Audiodub(video, audio)

DGDecode_MPEG2Source("video.d2v", idct=0, cpu=6, moderate_h=20, moderate_v=40, upConv=0, i420=true)

AVCSource("video.dga", deblock=true)

LWLibavVideoSource("video.mkv")
LWLibavAudioSource("video.mkv")

OpenDMLSource("video.avi", audio=true, pixel_type="AUTO").ColorYUV(levels="PC->TV")

OMFInput("video.omf", order = -1, levels = 1, info = 0)

ImageSource("image.bmp") #images

#FlipHorizontal()
#FlipVertical()