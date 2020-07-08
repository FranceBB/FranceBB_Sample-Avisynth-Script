#Levels convertion 16bit:

RangeY(a=16, b=235, ao=16, bo=235, g=1.0, mode=1, bitdepth=16)
RangeUV(au=16, bu=240, aou=16, bou=240, av=16, bv=240, aov=16, bov=240, mode=1, bitdepth=16)

#TV convertion standard:

ClampHDR(ay=16, by=235, au=16, bu=240, av=16, bv=240, bitdepth=16)

#PC Range to TV range
Levels(0, 1, 255, 16, 235, coring=false)

#TV range to PC Range
Levels(16, 1, 235, 0, 255, coring=false)

#Black and White Correction
Levels(30, 1.0, 230, 0, 255)