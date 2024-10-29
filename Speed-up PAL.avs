#speed up +4% NTSC 23.976 -> 25 PAL

ResampleAudio(48000)
AssumeFPS(25, 1, true)
SSRC(48000)


#With Pitch adjustment:

ResampleAudio(48000)
AssumeFPS(25, 1, false)
TimeStretch(tempo=100.0*25.0/(24000.0/1001.0))
SSRC(48000)



#With separate pitch adjustment:

ResampleAudio(48000)
ConvertAudioToFloat()
AssumeFPS(25, 1, true)
TimeStretch(pitch=96)
ResampleAudio(48000)
ConvertAudioTo24bit()


#Only pitch adjustment
#for already sped up videos

ResampleAudio(48000)
ConvertAudioToFloat()
TimeStretch(pitch=96)
ResampleAudio(48000)
ConvertAudioTo24bit()
