#8bit planar
xNLMeans()

#8bit planar
TNLMeans(Ax=4, Ay=4, Az=0, Sx=2, Sy=2, Bx=1, By=1, rm=5, a=1.0, h=1.8, sse=true) #slightly worse, but faster!

#8bit planar
MosquitoNR(strength=32, restore=128, radius=2)

#8bit planar
eDeen(r=20, ty=14, tuv=21, ly=0, luv=0, hqc=true) #strong
eDeen(r=7, ty=14, tuv=21, ly=0, luv=0, hqc=true) #normal
Deen(meth="c3d" , mode=0, thrY=20, thrUV=25, ti=3.0)

#8bit planar
NirMalam(nf=0, xgrid=5, ygrid=5, autow=true, ry=75, gu=75, bv=75) #automatic denoise filter (fast)

#8bit planar
VagueDenoiser(threshold=0, method=2, nsteps=6, chromaT=0, debug=false, interlaced=false, wavelet=1, Wiener=true, wratio=0.5, percent=85) 
#adaptable two-pass Wavelet + Wiener -> slow but good

#8bit/10bit/12bit/14bit/16bit planar
neo_vd(threshold=2, method=2, nsteps=6, percent=85)

#8bit planar
FFT3DFilter(sigma=3.0, beta=1.0, plane=4, bw=16, bh=16, ow=8, oh=8, bt=3, kratio=3.0, sharpen=1.0, scutoff=0.3, svr=1.0, smin=4.0, smax=30.0, measure=true, interlaced=false, wintype=0, degrid=1.0, dehalo=1.0, hr=2.0, ht=50.0)

#8bit planar
Frfun7(lambda=3.0, T=10.0, Tuv=10.0, P=4, TP1=0, R1=3)

#8bit/10bit/12bit/14bit/16bit planar
neo_FFT3D(sigma=3.0, bt=3, y=3, u=3, v=3)

#16 bit interleave
hqdn3d(ls=8.0, cs=8.0, lt=6.0, ct=4.5, restart=7)

#8bit planar
dfttest(sigma=64, tbsize=1, lsb_in=false, lsb=false, Y=true, U=true, V=true, opt=0, dither=0)

#16 bit stack (dithertool)
dfttest(sigma=64, tbsize=1, lsb_in=true, lsb=true, Y=true, U=true, V=true, opt=0, dither=0)

#8bit/10bit/12bit/14bit/16bit/32bit planar
dfttest(sigma=64, tbsize=1, lsb_in=false, lsb=false, Y=true, U=true, V=true, opt=0, dither=0)

#8bit/10bit/12bit/14bit/16bit/32bit planar
neo_dfttest(sigma=64, tbsize=1, Y=3, U=3, V=3, dither=0, opt=0)
