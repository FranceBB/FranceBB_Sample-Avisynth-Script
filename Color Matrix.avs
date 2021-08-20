#Rec601 SD - Rec709 HD - Rec2020 UHD
Converttoy8() #4:0:0
Converttoyv411() #4:1:1
Converttoyv12() #4:2:0
ConverttoYUY2() #4:2:2 interleaved
ConverttoYV16() #4:2:2 planar
ConverttoYV24() #4:4:4
ConverttoRGB() #RGB
-
Converttoyv12(interlaced=false, matrix="Rec601")
ConverttoYUY2(interlaced=false, matrix="Rec601")
ConverttoYV16(interlaced=false, matrix="Rec601")
ConverttoYV24(interlaced=false, matrix="Rec601")
-
Converttoyv12(interlaced=false, matrix="Rec709")
ConverttoYUY2(interlaced=false, matrix="Rec709")
ConverttoYV16(interlaced=false, matrix="Rec709")
ConverttoYV24(interlaced=false, matrix="Rec709")
-

____________________________________________________________
#HDTV to SDTV or DVD

BT709ToBT601()

#Colormatrix (only YV12 or YUY2)

ColorMatrix(mode="Rec.601->Rec.709", interlaced=false, threads=0, thrdmthd=0)

ColorMatrix(mode="Rec.709->Rec.601", interlaced=false, threads=0, thrdmthd=0)

ColorMatrix(mode="Rec.601->FCC", interlaced=false, threads=0, thrdmthd=0)

ColorMatrix(mode="SMPTE 240M->Rec.601", interlaced=false, threads=0, thrdmthd=0)

ColorMatrix(mode="Rec.709->FCC", interlaced=false, threads=0, thrdmthd=0)

ColorMatrix(mode="Rec.2020->Rec.709", interlaced=false, threads=0, thrdmthd=0)

ColorMatrix(mode="Rec.709->Rec.2020", interlaced=false, threads=0, thrdmthd=0)

__________________________________________________________
#Matrix Convertion 16bit interleaved BT601 to BT709

Matrix(from=601, to=709, rg=1.0, gg=1.0, bg=1.0, a=16, b=235, ao=16, bo=235, bitdepth=16)

___________________________________________________________
#ConverttoYUY2 8bit multithreading
AutoYUY2()

____________________________________________________________
#BT709 SDR to BT2020 SDR 8bit - 10bit - 16bit planar

ConvertYUVtoXYZ()
ConvertXYZtoYUV(Color=1, pColor=2)

____________________________________________________________
#BT2020 SDR to BT709 SDR 8bit - 10bit - 16bit planar

ConvertYUVtoXYZ(Color=1)
ConvertXYZtoYUV(pColor=1)

_____________________________________________________________
#BT2020 HDR HLG to BT2100 HDR PQ 8bit, 10bit, 16bit planar

ConvertYUVtoLinearRGB(Color=0,HDRMode=1,HLGLw=1500,OOTF=false)
ConvertLinearRGBtoYUV(Color=0,OOTF=false)

_____________________________________________________________
#BT2100 HDR PQ to BT2020 HDR HLG to  8bit, 10bit, 16bit planar

ConvertYUVtoLinearRGB(Color=0,OOTF=false)
ConvertLinearRGBtoYUV(Color=0,HDRMode=1,HLGLw=1200,HLGColor=2,OOTF=false)

____________________________________________________________
#BT2020 HLG HDR to BT709 SDR 8bit - 10bit - 16bit planar

ConvertYUVtoXYZ(Color=0, HDRmode=2)
ConvertXYZ_Reinhard_HDRtoSDR(exposure_X=2.1)

ConvertXYZtoYUV(pColor=0)

____________________________________________________________
#BT2100 HDR PQ to BT709 SDR 8bit - 10bit - 16bit planar

ConvertBits(16)

ConvertYUVtoXYZ(Color=0, OutputMode=1, HDRMode=0, fullrange=false)

ConvertXYZ_Reinhard_HDRtoSDR(exposure_X=2.5, contrast_X=0.9)

ConvertXYZtoYUV(pColor=0)

Converttoyuv420()

____________________________________________________________
#BT2100 HDR PQ to BT709 SDR 16bit planar

ConvertBits(16)

ConvertToPlanarRGB()

Cube("C:\Programmi\AviSynth+\LUTs\PQ_to_BT709_v1.cube")

Converttoyuv420()

____________________________________________________________
#BT2100 HDR PQ to BT709 SDR 16bit planar

ConvertBits(16)

ConvertToPlanarRGB()

Cube("C:\Programmi\AviSynth+\LUTs\PQ_to_BT709_v2.cube")

Converttoyuv420()

____________________________________________________________
#BT2020 HDR HLG to BT709 SDR 16bit planar

ConvertBits(16)

ConvertToPlanarRGB()

Cube("C:\Programmi\AviSynth+\LUTs\HLG_to_BT709.cube")

Converttoyuv420()
____________________________________________________________
#BT709 SDR to BT2100 HDR PQ 16bit planar

ConvertBits(16)

ConvertToPlanarRGB()

Cube("C:\Programmi\AviSynth+\LUTs\BT709_to_PQ.cube")

Converttoyuv420()

____________________________________________________________
#BT709 SDR to BT2020 HDR HLG 16bit planar

ConvertBits(16)

ConvertToPlanarRGB()

Cube("C:\Programmi\AviSynth+\LUTs\BT709_to_HLG.cube")

Converttoyuv420()

____________________________________________________________
#BT2100 HDR PQ to BT2020 HDR HLG 16bit planar

ConvertBits(16)

ConvertToPlanarRGB()

Cube("C:\Programmi\AviSynth+\LUTs\PQ_to_HLG.cube")

Converttoyuv420()

____________________________________________________________
#S-Log2 to BT709 SDR 16bit planar

ConvertBits(16)

ConvertToPlanarRGB()

Cube("C:\Programmi\AviSynth+\LUTs\Slog2_to_BT709.cube")

Converttoyuv420()

____________________________________________________________
#S-Log3 to BT709 SDR 16bit planar

ConvertBits(16)

ConvertToPlanarRGB()

Cube("C:\Programmi\AviSynth+\LUTs\Slog3_to_BT709.cube")

Converttoyuv420()

____________________________________________________________
#C-Log3 to BT709 SDR 16bit planar

ConvertBits(16)

ConvertToPlanarRGB()

Cube("C:\Programmi\AviSynth+\LUTs\C-Log3_to_BT709.cube")

Converttoyuv420()

____________________________________________________________
#C-Log3 to BT2100 HDR PQ 16bit planar

ConvertBits(16)

ConvertToPlanarRGB()

Cube("C:\Programmi\AviSynth+\LUTs\C-Log3_to_HDR_PQ.cube")

Converttoyuv420()

____________________________________________________________
#C-Log3 to BT2020 HDR HLG 16bit planar

ConvertBits(16)

ConvertToPlanarRGB()

Cube("C:\Programmi\AviSynth+\LUTs\C-Log3_to_HDR_HLG.cube")

Converttoyuv420()

____________________________________________________________
#Log-C to to BT709 SDR 16bit planar

ConvertBits(16)

ConvertToPlanarRGB()

Cube("C:\Programmi\AviSynth+\LUTs\LogC_to_BT709.cube")

Converttoyuv420()

____________________________________________________________
#Z-Log to to BT709 SDR 16bit planar

ConvertBits(16)

ConvertToPlanarRGB()

Cube("C:\Programmi\AviSynth+\LUTs\Z-Log_to_BT709.cube")

Converttoyuv420()

____________________________________________________________
#Narrow range in Narrow range out LUT

#From 4:2:2 16bit planar Narrow Range to RGB Planar 16bit Narrow Range
z_ConvertFormat(pixel_type="RGBP16", colorspace_op="2020:2020:2020:limited=>rgb:2020:2020:limited", dither_type="none")

#From PQ to HLG with 16bit precision
Cube("I:\Scambio\WarnerBros\WarnerBros_PQToHLG_MaxCLL_1000.cube", fullrange=true)

#From RGB 16bit planar Narrow Range to YUV422 16bit planar Narrow Range
z_ConvertFormat(pixel_type="YUV422P16", colorspace_op="rgb:2020:2020:limited=>2020:2020:2020:limited", dither_type="none")
