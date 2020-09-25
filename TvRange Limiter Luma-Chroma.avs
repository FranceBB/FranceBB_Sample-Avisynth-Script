#8bit
Limiter(min_luma=16, max_luma=235, min_chroma=16, max_chroma=240)

#10bit
Limiter(min_luma=64, max_luma=940, min_chroma=64, max_chroma=940)

#12bit
Limiter(min_luma=256, max_luma=3760, min_chroma=256, max_chroma=3760)

#14bit
Limiter(min_luma=1024, max_luma=15040, min_chroma=1024, max_chroma=15040)

#16bit
Limiter(min_luma=4096, max_luma=60160, min_chroma=4096, max_chroma=60160)

#32bit Float
min_luma_float=16/255.0
max_luma_float=235/255.0
min_chroma_float=-112/255.0
max_chroma_float=107/255.0

Limiter(min_luma=min_luma_float, max_luma=max_luma_float, min_chroma=min_chroma_float, max_chroma=max_chroma_float)
