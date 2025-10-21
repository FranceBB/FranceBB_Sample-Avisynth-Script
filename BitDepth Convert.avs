#16bit interleave (HDR Core)

Bitdepth(from=8, to=16)

Bitdepth(from=16, to=8)


#16bit stacked (Dither Tool)

Dither_convert_8_to_16()

DitherPost() #16 to 8

#Dithering 16bit stacked to 8bit planar
DitherPost(mode=6) #Floyd Steinberg Error Diffusion
DitherPost(mode=7) #Stucki Error Diffusion
DitherPost(mode=8) #Atkinson Error Diffusion

#8, 10, 12, 14, 16, 32bit planar
ConvertBits(8)
ConvertBits(10)
ConvertBits(12)
ConvertBits(14)
ConvertBits(16)
ConvertBits(32)

#Dithering via Floyd-Steinberg error diffusion
ConvertBits(bits=8, dither=1)


