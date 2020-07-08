FFmpegSource2("logo1.mp4", fpsnum=30000, fpsden=1001, atrack=-1)
ResampleAudio(48000)
Spline36Resize(1920, 1080)
video0=last

FFmpegSource2("logo2.mp4", fpsnum=30000, fpsden=1001, atrack=-1)
ResampleAudio(48000)
Spline36Resize(1920, 1080)
video1=last

FFmpegSource2("video.mp4", fpsnum=30000, fpsden=1001, atrack=-1)
ResampleAudio(48000)
Spline36Resize(1920, 1080)
video2=last

FFmpegSource2("part 1.mp4", fpsnum=30000, fpsden=1001, atrack=-1)
ResampleAudio(48000)
Spline36Resize(1920, 1080)


TextSub("I Due Uchiha.ass")
video3=last

FFmpegSource2("part 2.mp4", fpsnum=30000, fpsden=1001, atrack=-1)
ResampleAudio(48000)
Spline36Resize(1920, 1080)


video4=last

ResampleAudio(48000)
video0++video1++video2++video3++video4