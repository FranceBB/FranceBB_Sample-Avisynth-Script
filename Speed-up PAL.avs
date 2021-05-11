#speed up +4% NTSC Telecined 23.976 -> 25 PAL

ResampleAudio(48000)
AssumeFPS(25, 1, true)
SSRC(48000)


#With Pitch adjustment:

ResampleAudio(48000)
AssumeFPS(25, 1, false)
TimeStretch(tempo=100.0*25.0/(24000.0/1001.0))
SSRC(48000)
