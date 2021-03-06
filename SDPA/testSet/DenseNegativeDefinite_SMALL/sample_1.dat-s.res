SDPA start at [Wed Nov 11 18:14:18 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_1.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseNegativeDefinite_SMALL\sample_1.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -1.30e+003 7.9e-001 1.0e+000 2.00e-001
 1 3.0e+003 2.1e-001 1.8e-016 +3.79e+001 -2.19e+003 1.0e+000 5.8e+000 2.00e-001
 2 3.3e+002 3.6e-017 2.8e-015 +1.28e+001 -9.66e+002 4.4e+001 9.5e-001 1.00e-001
 3 4.4e+001 2.7e-017 2.3e-016 +1.66e+000 -1.30e+002 9.4e-001 9.4e-001 1.00e-001
 4 6.8e+000 3.6e-017 1.1e-017 +2.09e+000 -1.84e+001 1.5e+000 8.9e-001 1.00e-001
 5 8.5e-001 3.2e-017 2.9e-018 -1.37e+000 -3.91e+000 1.1e+000 9.5e-001 1.00e-001
 6 1.1e-001 3.6e-017 2.9e-018 -1.72e+000 -2.05e+000 1.4e+000 9.5e-001 1.00e-001
 7 1.2e-002 3.6e-017 2.9e-018 -1.75e+000 -1.79e+000 1.3e+000 9.6e-001 1.00e-001
 8 1.3e-003 3.6e-017 1.4e-018 -1.76e+000 -1.76e+000 1.4e+000 9.6e-001 1.00e-001
 9 1.4e-004 3.6e-017 4.3e-018 -1.76e+000 -1.76e+000 1.4e+000 9.7e-001 1.00e-001
10 1.5e-005 3.6e-017 5.7e-018 -1.76e+000 -1.76e+000 1.4e+000 9.7e-001 1.00e-001
11 1.5e-006 3.6e-017 2.4e-017 -1.76e+000 -1.76e+000 1.4e+000 9.7e-001 1.00e-001
12 1.5e-007 3.6e-017 6.5e-017 -1.76e+000 -1.76e+000 9.0e-001 9.0e-001 1.00e-001

phase.value  = pdFEAS    
   Iteration = 12
          mu = +1.4708354223458286e-007
relative gap = +2.5122873166827502e-007
        gap  = +4.4125063491939898e-007
     digits  = +6.5999306941886644e+000
objValPrimal = -1.7563698887538550e+000
objValDual   = -1.7563703300044899e+000
p.feas.error = +3.5527136788005009e-015
d.feas.error = +1.5987211554602254e-013
total time   = 0.006679
** Paramters **
maxIteration = 100
epsilonStar  = +9.9999999999999995e-008
lambdaStar   = +1.0000000000000000e+002
omegaStar    = +2.0000000000000000e+000
lowerBound   = -1.0000000000000000e+005
upperBound   = +1.0000000000000000e+005
betaStar     = +1.0000000000000001e-001
betaBar      = +2.0000000000000001e-001
gammaStar    = +9.0000000000000002e-001
epsilonDash  = +9.9999999999999995e-008
xPrint       = %+8.3e 
XPrint       = %+8.3e 
YPrint       = %+8.3e 
infPrint     = %+10.16e 

                         Time(sec)  Ratio(% : MainLoop) 
 Predictor time  =       0.004469,  66.911214
 Corrector time  =       0.001713,  25.647552
 Make bMat time  =       0.001982,  29.675101
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.001491,  22.323701
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000498,  7.456206
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.001488,  22.278784
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000723,  10.824974
 makedXdZ        =       0.002211,  33.103758
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000497,  7.441234
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000000,  0.000000
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.004697,  70.324899
 Main Loop       =       0.006679,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000000,  0.000000
 Total           =       0.006679,  100.000000

xVec = 
{-7.976e-002,-6.881e-005}
xMat = 
{
{ {+3.715e+000,-5.026e+000,+8.769e-001 },
  {-5.026e+000,+7.002e+000,-9.322e-001 },
  {+8.769e-001,-9.322e-001,+5.265e-001 }   }
}
yMat = 
{
{ {+1.001e+000,+6.500e-001,-5.170e-001 },
  {+6.500e-001,+4.219e-001,-3.356e-001 },
  {-5.170e-001,-3.356e-001,+2.669e-001 }   }
}
    main loop time = 0.006679
        total time = 0.006679
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000000
SDPA end at [Wed Nov 11 18:14:18 2020]
ALL TIME = 0.008168
