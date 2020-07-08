Restoration filter:

______________________________________________________
General Convolution Matrices

ConverttoRGB()

C20 = "-2 0 3 0 -2   0 -1 -3 -1 0   2 -6 56 -6 2   0 -1 -3 -1 0   -1 0 3 0 -1"  # C2 entry level
C21 = "-1 0 3 0 -1   0 -1 -3 -1 0   3 -5 56 -5 3   0 -1 -3 -1 0   -1 0 3 0 -1"  # Crystal Outline
C22 = "-1 0 3 0 -1   0 -1 -3 -1 0   3 -6 48 -6 3   0 -1 -3 -1 0   -1 0 3 0 -1"  #
C23 = "-1 0 3 0 -1   0 -1 -3 -1 0   3 -5 48 -5 3   0 -1 -3 -1 0   -1 0 3 0 -1"  #
C24 = " 0 0 3 0 -0   0 -1 -3 -1 0   4 -4 44 -4 4   0 -1 -3 -1 0    0 0 3 0  0"  # c3 base
C000 = "0 0 0 0 100   0 0 0 0 0   0 0 0 0 0  0 0 0 0 0   0 0 0 0 0" #asymmetric dummy kernel (to keep the shifting)

C31  = "3 -4  8 -10 112 0  0 -0 -4 -15   0  0 -6 -0  15   0  0  0  0 -5   0  0  0  0  0" #C3.1 tight
C32  = "3 -3  9 -13 112 0  0 -0 -4 -15   0  0 -6 -0  15   0  0  0  0 -5   0  0  0  0  0" #C3.2 tight sharper
C32a = "3 -3  9 -13 140 0  0 -0 -4 -15   0  0 -6 -0  15   0  0  0  0 -5   0  0  0  0  0" #C3.2a tight sharper, less intensity
C32c = "3 -3 11 -13 173 0  0 -0 -4 -10   0  0 -6 -0  15   0  0  0  0 -5   0  0  0  0  0" #C3.2c for progressive DVDs! ###ok
C33  = "3 -3 10 -15 112 0  0 -0 -4 -12   0  0 -6 -0  14   0  0  0  0 -4   0  0  0  0  0" #C3.3 wide 
C331 = "4 -5 14 -15 112 0  0 -0 -4 -12   0  0 -6 -0  14   0  0  0  0 -4   0  0  0  0  0" #C3.31 wide attenuated
C34  = "2 -5 12 -20 112 0  0 -0 -4 -10   0  0 -6 -0  12   0  0  0  0 -4   0  0  0  0  0" #C3.4 wide sharper ##

C40  = "3 -5 17 -21 112 0  0 -0 -4 -13   0  0 -6 -0  15   0  0  0  0 -4   0  0  0  0  0" #C4.0 natural look ##ok
C40a = "3 -5 21 -23 112 0  0 -0 -4 -12   0  0 -8 -0  14   0  0  0  0 -4   0  0  0  0  0" #C4.0a nat sharper
C40e = "3 -5 23 -25 140 0  0 -0 -4 -10   0  0 -6 -0  15   0  0  0  0 -4   0  0  0  0  0" #C4.0e 720x480 !### ok
#                                -10..-15          13..15                    # depends on interlacing artifacts
C41  = "3 -8  7 -11 112 0  0 -0 -6 -12   0  0 -3  2  14   0  0  0  0 -4   0  0  0  0  2" #C4.1 naturalsharp extreme for LQ DVD
C41c = "3 -8  7 -11 112 0  0 -0 -6 -17   0  0 -3  2  17   0  0  0  0 -9   0  0  0  0  1" #

CX7  = "2 -5 15 -20  96 0  0 -0 -6 -12   0  0 -6 -0  12   0  0  0  0 -4   0  0  0  0  0" #X7  wide strong

GeneralConvolution(0, C41) # select kernel to use, specify its variable name here
GeneralConvolution(0, C21) 