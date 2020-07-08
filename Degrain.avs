#slow
super = MSuper(pel=2, sharp=1)
bv1 = MAnalyse(super, isb = true, delta = 1, overlap=4)
fv1 = MAnalyse(super, isb = false, delta = 1, overlap=4)
bv2 = MAnalyse(super, isb = true, delta = 2, overlap=4)
fv2 = MAnalyse(super, isb = false, delta = 2, overlap=4)
MDegrain2(super,bv1,fv1,bv2,fv2,thSADC=800, thSAD=800)

return last


TemporalDegrain(GPU=false, sigma=16, bw=16, bh=16, blksize=8, pel=2, degrain=2, SAD1=400, SAD2=300, HQ=1)

#fast

RemoveGrainHD()
TemporalRemoveGrainHD()

AdaptiveMedian()