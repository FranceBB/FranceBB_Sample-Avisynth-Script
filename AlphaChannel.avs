#Indexing
FFMpegSource2("Wvd3_clean.mov", atrack=-1)


#Getting rid of evil frame properties
propClearAll()

#Keeping the alpha channel
ConverttoRGB32()

#Collecting data
my_width=Width()
my_height=Height()
my_framerate=FrameRate()
my_frames=FrameCount()
my_audio_channels=AudioChannels()
my_audio=GetChannels(my_audio_channels)

#Substituting the alpha channel with a custom image
mk=ExtractA().ConverttoRGB32()
bg=ImageSource("\\mibctvan000.avid.mi.bc.sky.it\Ingest\MEDIA\temp\green_screen_sample.png", fps=my_framerate, start=0, end=my_frames, pixel_type="RGB32").Spline64Resize(my_width, my_height)
top=last.Mask(mk)
video=Layer(bg, top)
audio=my_audio
AudioDub(video, audio)

#Going to 4:2:2 planar
Converttoyv16()
