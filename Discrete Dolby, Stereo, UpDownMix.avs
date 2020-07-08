Track1: Front Left 5.1
Track2: Front Right 5.1
Track3: Center 5.1
Track4: LFE 5.1
Track5: Surround Left 5.1
Track6: Surround Right 5.1
Track7: Stereo Full Mix Left 2.0
Track8: Stereo Full Mix Right 2.0

#Discrete Dolby to 5.1 track
____________________________________________________________

video=colorbars(width = 704, height = 396, pixel_type = "yv12")

ch1=WAVSource("ch1.wav") #FL
ch2=WAVSource("ch2.wav") #FR
ch3=WAVSource("ch3.wav") #C
ch4=WAVSource("ch4.wav") #LFE
ch5=WAVSource("ch5.wav") #SL
ch6=WAVSource("ch6.wav") #SR

audio=MergeChannels(ch1, ch2, ch3, ch4, ch5, ch6)
#MergeChannels(FL, FR, C, LFE, SL, SR)

AudioDub(video, audio)

Normalize(0.89, show=false)

SuperEq("C:\Programmi\AviSynth 2.5\Equalizer Presets\Loudness.feq")
SuperEq("O:\episodi\Equalizer Presets\Home Theater.feq")

__________________________________________________________
2.0 to 5.1
UpAction() #action movies only
UpDialog() #dialogues mainly
UpGerzen()
UpFarina()
UpMultisonic()
UpSoundOnSound()

__________________________________________________________
5.1 to 2.0 (Dolby Pro Logic II downmix):

Dmix5Dpl2()