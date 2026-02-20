DirectShowSource("video.avi", fps=23.976, convertfps=true, seek=true, audio=true, video=true, seekzero=false, pixel_type="AUTO")

DirectShowSource2("video.avi", fps=29.970, pixel_type="YV12")

FFmpegSource2("video.mp4", fpsnum=24000, fpsden=1001, atrack=-1)

#FFMS2 normal
video=FFVideoSource("video.mxf", fpsnum=24000, fpsden=1001)
audio=FFAudioSource("audio.mxf")
Audiodub(video, audio)

#FFMS2 fill audio gaps
video=FFVideoSource("video.mxf", fpsnum=24000, fpsden=1001)
audio=FFAudioSource("audio.mxf", fillgaps=1)
Audiodub(video, audio)

video=BSVideoSource("test.mxf")
audio=BSAudioSource("test.mxf")
AudioDub(video, audio)

#LWLibav normal
video=LWLibavVideoSource("video.mxf")
audio=LWLibavAudioSource("video.mxf")
AudioDub(video, audio)

#LWLibav fill audio gaps
video=LWLibavVideoSource("video.mxf")
audio=LWLibavAudioSource("video.mxf", fill_agaps=1)
AudioDub(video, audio)


BRawSource("A004_10040638_C001.braw", bits=32)

DGDecode_MPEG2Source("video.d2v", idct=0, cpu=6, moderate_h=20, moderate_v=40, upConv=0, i420=true)

AVCSource("video.dga", deblock=true)

RawSourcePlus("video.y4m")

OpenDMLSource("video.avi", audio=true, pixel_type="AUTO").ColorYUV(levels="PC->TV")

OMFInput("video.omf", order = -1, levels = 1, info = 0)

ImageSource("image.bmp") #images

#FlipHorizontal()
#FlipVertical()

#For IPCM
NicLPCMSource("IPCM_Sample_track2.ipcm", 48000, -24, 2)



