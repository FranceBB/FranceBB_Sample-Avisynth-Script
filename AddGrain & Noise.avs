#Works in 8bit/10bit/12bit/14bit/16bit planar
#use ONLY on overfiltered old sources

#constant=false for dynamic grain
AddGrainC(var=5.0, uvar=0.0, constant=true)

______________________________________________
AddNoise 16bit interleave (double width)

NoiseY(amp=10.0, seed=0, mode=1, bitdepth=16)

______________________________________________
Add combing horizontal old fashioned analogic-like strips

AddGrain(1, 1, 0, uvar=6)