#slow down -4% PAL 25 -> 23.976 NTSC

ResampleAudio(48000)
AssumeFPS(24000, 1001, true)
ResampleAudio(48000)

#with separate pitch adjustment

ResampleAudio(48000)
ConvertAudioToFloat()
AssumeFPS(24000, 1001, true)
TimeStretch(pitch=104)
ResampleAudio(48000)
ConvertAudioTo24bit()