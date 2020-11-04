SDPA start at [Wed Nov 04 15:48:15 2020]
param  is ./param.sdpa 
data   is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_1.dat-s  : sparse
out    is G:\Research\SDP\SDPSolver\SDPA\testSet\generated\DenseGeneralized_SMALL\sample_1.dat-s.res
NumThreads  is set as 1
Schur computation : DENSE 
   mu      thetaP  thetaD  objP      objD      alphaP  alphaD  beta 
 0 1.0e+004 1.0e+000 1.0e+000 -0.00e+000 -3.00e+002 7.3e-001 1.0e+000 2.00e-001
 1 3.3e+003 2.7e-001 2.6e-016 +1.34e+001 +1.40e+003 3.3e-001 2.3e+000 4.77e-001
 2 3.4e+003 1.8e-001 4.1e-015 +5.81e+000 +7.05e+004 1.0e-003 9.0e+001 9.91e+003
 3 3.0e+009 1.8e-001 2.1e-009 +8.98e+000 +5.24e+010 1.0e-003 9.0e+001 9.91e+003

phase.value  = pdINF     
   Iteration = 3
          mu = +3.0419213711415992e+009
relative gap = +1.9999999993139690e+000
        gap  = -5.2385850594591972e+010
     digits  = -3.0102999551501147e-001
objValPrimal = +8.9845784631663559e+000
objValDual   = +5.2385850603576553e+010
p.feas.error = +2.0120611974710677e+001
d.feas.error = +3.8146972656250000e-006
total time   = 0.004147
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
 Predictor time  =       0.001754,  47.897324
 Corrector time  =       0.000913,  24.931731
 Make bMat time  =       0.001114,  30.420535
 Make bDia time  =       0.000000,  0.000000
 Make bF1  time  =       0.000000,  0.000000
 Make bF2  time  =       0.000000,  0.000000
 Make bF3  time  =       0.000000,  0.000000
 Make bPRE time  =       0.000000,  0.000000
 Make rMat time  =       0.000846,  23.102130
 Make gVec Mul   =       0.000000,  0.000000
 Make gVec time  =       0.000464,  12.670672
 Cholesky bMat   =       0.000000,  0.000000
 Ste Pre time    =       0.000000,  0.000000
 Ste Cor time    =       0.000000,  0.000000
 solve           =       0.000000,  0.000000
 sumDz           =       0.000109,  2.976516
 makedX          =       0.000000,  0.000000
 symmetriseDx    =       0.000134,  3.659203
 makedXdZ        =       0.000243,  6.635718
 xMatTime        =       0.000000,  0.000000
 zMatTime        =       0.000000,  0.000000
 invzMatTime     =       0.000000,  0.000000
 xMatzMatTime    =       0.000000,  0.000000
 EigxMatTime     =       0.000000,  0.000000
 EigzMatTime     =       0.000000,  0.000000
 EigxMatzMatTime =       0.000000,  0.000000
 updateRes       =       0.000995,  27.170945
 EigTime         =       0.000000,  0.000000
 sub_total_bMat  =       0.002548,  69.579465
 Main Loop       =       0.003662,  100.000000
 File Check      =       0.000000,  0.000000
 File Change     =       0.000000,  0.000000
 File Read       =       0.000485,  13.244129
 Total           =       0.004147,  113.244129

xVec = 
{+4.936e-001,+6.611e-003}
xMat = 
{
{ {+2.161e+001,+1.825e+001,-1.739e+000 },
  {+1.825e+001,+1.614e+001,-4.632e+000 },
  {-1.739e+000,-4.632e+000,+2.807e+001 }   }
}
yMat = 
{
{ {+9.424e+008,-1.214e+009,+7.032e+007 },
  {-1.214e+009,+1.802e+009,-7.497e+007 },
  {+7.032e+007,-7.497e+007,+1.255e+008 }   }
}
    main loop time = 0.003662
        total time = 0.004147
  file  check time = 0.000000
  file change time = 0.000000
  file   read time = 0.000485
SDPA end at [Wed Nov 04 15:48:15 2020]
ALL TIME = 0.005337
