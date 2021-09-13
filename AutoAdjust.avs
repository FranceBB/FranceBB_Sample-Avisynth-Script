#PlanarRGB 16bit only
MSRCR(sigma=250, lower_thr=0.001, upper_thr=0.001, fulls=true, fulld=true, restore=125.0)


autoadjust(scd_threshold=12, temporal_radius=20, use_interp=true, use_dither=true, high_quality=true, high_bitdepth=false, threads_count=0, asm_opt=2, debug_view=false, auto_gain=true, dark_limit=10.0, bright_limit=10.0, gamma_limit=10.0, dark_exclude=0.0, bright_exclude=0.0, gain_mode=0, chroma_process=200, avg_safety=0.25, auto_balance=true, chroma_limit=2.0, balance_str=1.0)


#high_bitdepth for 16bit dither tool
#high_quality true, slower
#threads_count, CPU cores
#asm_opt 1 C, 2 SSE2, 3 AVX2

Coloryuv(autoGain=True)

______________________________
#SmoothLevels()
#SmoothTweak()
#SmoothCurve()
#SmoothCustom()
#SmoothTools()

#SmoothLevels16 for 16bit
_____________________________
HDRAGC()

_____________________________
#Mostly for pictures and natural footages
HighlightLimiter(gblur=5.0, threshold=150, twopass=false)

#Local Contrast Enhancement
LCE(brightness=80, correction=false, gblur=0.1, mode=1, contrast=1.5)

#Contrast Mask HDR - better -
ContrastMask(enhance=10.0, tvcolor=true, gblur=20.0)
