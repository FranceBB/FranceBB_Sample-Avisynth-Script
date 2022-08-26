#Rec601 SD - Rec709 HD - Rec2020 UHD
Converttoy8() #4:0:0
Converttoyv411() #4:1:1
Converttoyv12() #4:2:0
ConverttoYUY2() #4:2:2 interleaved
ConverttoYV16() #4:2:2 planar
ConverttoYV24() #4:4:4
ConverttoRGB() #RGB
#8bit only yv12, yv16, yv24
#8bit, 10bit, 12bit, 14bit, 16bit, 32bit YUV420, YUV422, YUV444
-
ConverttoYUV420(interlaced=false, matrix="Rec601")
ConverttoYUY2(interlaced=false, matrix="Rec601") #8bit only
ConverttoYUV422(interlaced=false, matrix="Rec601")
ConverttoYUV444(interlaced=false, matrix="Rec601")
-
ConverttoYUV420(interlaced=false, matrix="PC.601")
ConverttoYUY2(interlaced=false, matrix="PC.601") #8bit only
ConverttoYUV422(interlaced=false, matrix="PC.601")
ConverttoYUV444(interlaced=false, matrix="PC.601")
-
ConverttoYUV420(interlaced=false, matrix="Rec709")
ConverttoYUY2(interlaced=false, matrix="Rec709") #8bit only
ConverttoYUV422(interlaced=false, matrix="Rec709")
ConverttoYUV444(interlaced=false, matrix="Rec709")
-
ConverttoYUV420(interlaced=false, matrix="PC.709")
ConverttoYUY2(interlaced=false, matrix="PC.709") #8bit only
ConverttoYUV422(interlaced=false, matrix="PC.709")
ConverttoYUV444(interlaced=false, matrix="PC.709")
-
Converttoyv12(interlaced=false, matrix="Rec2020")
ConverttoYUY2(interlaced=false, matrix="Rec2020") #8bit only
ConverttoYV16(interlaced=false, matrix="Rec2020")
ConverttoYV24(interlaced=false, matrix="Rec2020")
-
Converttoyv12(interlaced=false, matrix="PC.2020")
ConverttoYUY2(interlaced=false, matrix="PC.2020") #8bit only
ConverttoYV16(interlaced=false, matrix="PC.2020")
ConverttoYV24(interlaced=false, matrix="PC.2020")

________________________________________________________________________________________________________
#From normal 4:2:0 to 4:2:0 Type 2
#with 8bit, 10bit, 12bit, 14bit, 16bit planar and 32bit float precision

z_ConvertFormat(chromaloc_op="mpeg2=>top_left")

________________________________________________________________________________________________________
#From normal 4:2:0 8bit planar to 4:2:0 Type 2 8bit planar (Internal)

Converttoyv12(matrix="Rec2020", ChromaInPlacement="MPEG2", ChromaOutPlacement="top_left")

________________________________________________________________________________________________________
#From normal 4:2:0 to 4:2:0 Type 2 (Internal)

ConverttoYUV420(matrix="Rec2020", ChromaInPlacement="MPEG2", ChromaOutPlacement="top_left")

________________________________________________________________________________________________________
#Matrix Conversion BT601 to BT709 with 8bit, 10bit, 12bit, 14bit, 16bit planar and 32bit float precision

z_ConvertFormat(colorspace_op="601=>709", resample_filter_uv="spline64", dither_type="error_diffusion")

________________________________________________________________________________________________________
#Matrix Conversion BT709 to BT601 with 8bit, 10bit, 12bit, 14bit, 16bit planar and 32bit float precision

z_ConvertFormat(colorspace_op="709=>601", resample_filter_uv="spline64", dither_type="error_diffusion")

________________________________________________________________________________________________________
#Matrix Conversion BT709 to BT2020 with 8bit, 10bit, 12bit, 14bit, 16bit planar and 32bit float precision

z_ConvertFormat(colorspace_op="709:709:709:limited=>2020:2020:2020:limited", dither_type="error_diffusion")
________________________________________________________________________________________________________
#Matrix Conversion BT2020 to BT709 with 8bit, 10bit, 12bit, 14bit, 16bit planar and 32bit float precision

z_ConvertFormat(colorspace_op="2020:2020:2020:limited=>709:709:709:limited", dither_type="error_diffusion")
________________________________________________________________________________________________________
#Matrix Convertion BT601 to BT709 16bit interleaved 

Matrix(from=601, to=709, rg=1.0, gg=1.0, bg=1.0, a=16, b=235, ao=16, bo=235, bitdepth=16)

________________________________________________________________________________________________________
#BT709 SDR to BT2020 SDR 8bit - 10bit - 16bit planar

ConvertYUVtoXYZ()
ConvertXYZtoYUV(Color=1, pColor=2)

________________________________________________________________________________________________________
#BT2020 SDR to BT709 SDR 8bit - 10bit - 16bit planar

ConvertYUVtoXYZ(Color=1)
ConvertXYZtoYUV(pColor=1)

________________________________________________________________________________________________________
#BT2020 HDR HLG to BT2100 HDR PQ 8bit, 10bit, 16bit planar

ConvertYUVtoLinearRGB(Color=0,HDRMode=1,HLGLw=1500,OOTF=false)
ConvertLinearRGBtoYUV(Color=0,OOTF=false)

________________________________________________________________________________________________________
#BT2100 HDR PQ to BT2020 HDR HLG to  8bit, 10bit, 16bit planar

ConvertYUVtoLinearRGB(Color=0,OOTF=false)
ConvertLinearRGBtoYUV(Color=0,HDRMode=1,HLGLw=1200,HLGColor=2,OOTF=false)

________________________________________________________________________________________________________
#BT2020 HLG HDR to BT709 SDR 8bit - 10bit - 16bit planar

ConvertYUVtoXYZ(Color=0, HDRmode=2)
ConvertXYZ_Reinhard_HDRtoSDR(exposure_X=2.1)

ConvertXYZtoYUV(pColor=0)

________________________________________________________________________________________________________
#BT2100 HDR PQ to BT709 SDR 8bit - 10bit - 16bit planar

ConvertBits(16)

ConvertYUVtoXYZ(Color=0, OutputMode=1, HDRMode=0, fullrange=false)

ConvertXYZ_Reinhard_HDRtoSDR(exposure_X=2.5, contrast_X=0.9)

ConvertXYZtoYUV(pColor=0)

Converttoyuv420()

________________________________________________________________________________________________________
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

___________________________________________________________
#ConverttoYUY2 8bit multithreading
AutoYUY2()

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
z_ConvertFormat(pixel_type="RGBP16", colorspace_op="2020:st2084:2020:limited=>rgb:st2084:2020:limited", resample_filter_uv="spline64", dither_type="error_diffusion")

#From PQ to HLG with 16bit precision
Cube("\\mibcisilonsc\avisynth\Server\encoder\encoder\Processors\avs_plugins\LUTs\WarnerBros_PQToHLG_MaxCLL_2508.cube", fullrange=true)

#From RGB 16bit planar Narrow Range to YUV422 10bit planar Narrow Range with dithering
z_ConvertFormat(pixel_type="YUV422P10", colorspace_op="rgb:std-b67:2020:limited=>2020:std-b67:2020:limited", resample_filter_uv="spline64", dither_type="error_diffusion")

____________________________________________________________
#BBC HDR PQ to HDR HLG LUT

#From 4:2:2 16bit planar Narrow Range to RGB Planar 16bit Full Range
z_ConvertFormat(pixel_type="RGBP16", colorspace_op="2020:st2084:2020:limited=>rgb:st2084:2020:full", resample_filter_uv="spline64", dither_type="error_diffusion")

#From PQ to HLG with 16bit precision
Cube("\\mibcisilonsc\avisynth\Server\encoder\encoder\Processors\avs_plugins\LUTs\1a_PQ1000_HLG_mode-nar_in-nar_out-nar_nocomp.cube", fullrange=true)

#From RGB 16bit planar Full Range to YUV422 10bit planar Narrow Range with dithering
z_ConvertFormat(pixel_type="YUV422P10", colorspace_op="rgb:std-b67:2020:full=>2020:std-b67:2020:limited", resample_filter_uv="spline64", dither_type="error_diffusion")

____________________________________________________________
#BBC BT709 SDR to HDR HLG LUT

#From 4:2:0 16bit planar Narrow Range to RGB Planar 16bit Full Range
z_ConvertFormat(pixel_type="RGBP16", colorspace_op="709:709:709:limited=>rgb:709:709:full", resample_filter_uv="spline64", dither_type="error_diffusion")

#From BT709 SDR to BT2020 HDR HLG with 16bit precision
Cube("\\mibcisilonsc\avisynth\Server\encoder\encoder\Processors\avs_plugins\LUTs\5a_BT709_HLG_UPCONVERT_DISPLAY_mode-nar_in-nar_out-nar_nocomp.cube", fullrange=true)

#From RGB 16bit planar Full Range to YUV422 10bit planar Narrow Range with dithering
z_ConvertFormat(pixel_type="YUV422P10", colorspace_op="rgb:std-b67:2020:full=>2020:std-b67:2020:limited", resample_filter_uv="spline64", dither_type="error_diffusion")


____________________________________________________________
#BBC HDR HLG to HDR PQ LUT

#From 4:2:2 16bit planar Narrow Range to RGB Planar 16bit Full Range
z_ConvertFormat(pixel_type="RGBP16", colorspace_op="2020:std-b67:2020:limited=>rgb:std-b67:2020:full", resample_filter_uv="spline64", dither_type="error_diffusion")

#From PQ to HLG with 16bit precision
Cube("\\mibcisilonsc\avisynth\Server\encoder\encoder\Processors\avs_plugins\LUTs\7a_HLG_PQ1000_mode-nar_in-nar_out-nar_nocomp.cube", fullrange=true)

#From RGB 16bit planar Full Range to YUV422 10bit planar Narrow Range with dithering
z_ConvertFormat(pixel_type="YUV422P10", colorspace_op="rgb:st2084:2020:full=>2020:st2084:2020:limited", resample_filter_uv="spline64", dither_type="error_diffusion")


____________________________________________________________
#BBC HDR HLG to SDR BT709 with overshooting LUT


#From 4:2:2 16bit planar Narrow Range to RGB Planar 16bit Narrow Range
z_ConvertFormat(pixel_type="RGBP16", colorspace_op="2020:std-b67:2020:limited=>rgb:std-b67:2020:limited", resample_filter_uv="spline64", dither_type="error_diffusion", 
use_props=0)

#From HLG to BT709 with 16bit precision
Cube("\\mibctvan000.avid.mi.bc.sky.it\avdb\Server\encoder\encoder\Processors\avs_plugins\LUTs\9c_HLG_BT709_Type3_Display_DownMapping_SuperWhite_nocomp-v1_5.cube", 
fullrange=true)

#From RGB 16bit planar Narrow Range to YUV420 8bit planar Narrow Range with dithering
z_ConvertFormat(pixel_type="YUV420", colorspace_op="rgb:709:709:limited=>709:709:709:limited", resample_filter_uv="spline64", dither_type="error_diffusion", use_props=0)

____________________________________________________________
#Find MaxCLL (nits), will write a txt where the bat runs

ConvertToRGB64(matrix="Rec2020")

MaxCLLFind()


____________________________________________________________
#BT709 SDR to HDR HLG avsresize

z_ConvertFormat(pixel_type="YUV422P16", colorspace_op="709:709:709:limited=>2020ncl:std-b67:2020:limited", resample_filter_uv="spline64", dither_type="error_diffusion")
