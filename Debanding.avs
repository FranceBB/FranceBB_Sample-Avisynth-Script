#16bit stacked (Dither Tool) really strong
gradfun3(thr=2.00, thrc=2.00, radius=68, smode=2, staticnoise=false, lsb_in=true, lsb=true) 

#opt=0 No optimisazion, opt=1 SSE2, opt=2 SSSE3, opt=3 SSE4.1

#16 bit Interleave (HDR Core)
f3kdb(range=15, Y=45, Cb=30, Cr=30, grainY=0, grainC=0, sample_mode=2, blur_first=true, dynamic_grain=false, mt=true, keep_tv_range=true, input_mode=2, input_depth=16, output_mode=2, output_depth=16)

#16 bit Stacked (Dither Tool)
f3kdb(range=15, Y=45, Cb=30, Cr=30, grainY=0, grainC=0, sample_mode=2, blur_first=true, dynamic_grain=false, mt=true, keep_tv_range=true, input_mode=1, input_depth=16, output_mode=1, output_depth=16)

#8 bit
f3kdb(range=15, Y=45, Cb=30, Cr=30, grainY=0, grainC=0, sample_mode=2, blur_first=true, dynamic_grain=false, mt=true, keep_tv_range=true, input_depth=8, output_depth=8)

#8bit/10bit/12bit/14bit/16bit planar
neo_f3kdb(range=15, Y=45, Cb=30, Cr=30, grainY=0, grainC=0, sample_mode=2, blur_first=true, dynamic_grain=false, mt=true, keep_tv_range=true)

#8bit
gradfun2db(thr=10.8)

#8bit
gradfun3(thr=2.00, thrc=2.00, radius=68, smode=2, staticnoise=false, lsb_in=false, lsb=false) 
