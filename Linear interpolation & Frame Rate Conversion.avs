#Tuning=Film #cores= CPU cores

InterFrame(GPU=false, Preset="Medium", Tuning="Animation", NewNum=60000, NewDen=1001, InputType="2D", OverrideAlgo=13, Cores=1, FrameDouble=false)

#blending
ConvertFPS(29.97) 

#linear interpolation

super = MSuper(last)
vecb = MAnalyse(super,isb=true)
vecf = MAnalyse(super,isb=false)
MFlowFps(last,super,vecb,vecf,num=50000,den=1000,blend=false)

#linear interpolation 2

 super=MSuper(pel=1, hpad=0, vpad=0)
    backward_1=MAnalyse(super, chroma=false, isb=true,  blksize=16, blksizev=16, searchparam=3, plevel=0, search=3, badrange=(-24))
    forward_1 =MAnalyse(super, chroma=false, isb=false, blksize=16, blksizev=16, searchparam=3, plevel=0, search=3, badrange=(-24))
    backward_2 = MRecalculate(super, chroma=false, backward_1, blksize=8, blksizev=8, searchparam=0, search=3)
    forward_2  = MRecalculate(super, chroma=false, forward_1,  blksize=8, blksizev=8, searchparam=0, search=3)
    MBlockFps(super, backward_2, forward_2, num=50000, den=1000, mode=0)
