#tweak according to the audiotrack

video=colorbars(width = 704, height = 396, pixel_type = "yv12")
audio=WAVSource("NARUTO_663.wav")
AudioDub(video, audio)
ResampleAudio(48000)
Normalize(0.22, show=false)

SuperEq("C:\Programmi\AviSynth 2.5\Equalizer Presets\Loudness.feq")

SuperEq("C:\Programmi\AviSynth 2.5\Equalizer Presets\Home Theater.feq")

#Positive values increase loudness, negative values decrease it
AmplifyDB(-12.0) #decrease
AmplifyDB(12.0) #increase
AmplifyDB(+3, +1) #increases left channel +3 and righ channel +1
Amplify(-1, -1) #inverts the phase of the left channel and the right one

#Convert to mono
ConvertToMono()

#Duplicate a mono track to make a fake stereo track
left_channel = WavSource("c:\left_channel.wav")
right_channel = WavSource("c:\right_channel.wav")
MonoToStereo(left_channel, right_channel)