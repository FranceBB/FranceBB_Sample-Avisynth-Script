DirectShowSource("video.avi", fps=23.976, convertfps=true, seek=true, audio=true, video=true, seekzero=false, pixel_type="AUTO")

DirectShowSource2("video.avi", fps=29.970, pixel_type="YV12")

FFmpegSource2("video.mp4", fpsnum=24000, fpsden=1001, atrack=-1)

video=FFVideoSource("video.mkv", fpsnum=24000, fpsden=1001)
audio=FFAudioSource("audio.dts")
Audiodub(video, audio)

video=BSVideoSource("test.mxf")
audio=BSAudioSource("test.mxf")
AudioDub(video, audio)

video=LWLibavVideoSource("video.mkv")
audio=LWLibavAudioSource("video.mkv")
AudioDub(video, audio)

BRawSource("A004_10040638_C001.braw", bits=32)

DGDecode_MPEG2Source("video.d2v", idct=0, cpu=6, moderate_h=20, moderate_v=40, upConv=0, i420=true)

AVCSource("video.dga", deblock=true)


OpenDMLSource("video.avi", audio=true, pixel_type="AUTO").ColorYUV(levels="PC->TV")

OMFInput("video.omf", order = -1, levels = 1, info = 0)

ImageSource("image.bmp") #images

#FlipHorizontal()
#FlipVertical()

#For IPCM
NicLPCMSource("IPCM_Sample_track2.ipcm", 48000, -24, 2)
