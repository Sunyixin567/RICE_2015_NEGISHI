
$offSymXRef offsymlist
option SolPrint =off;
option Decimals =3;
option nlp=CONOPT ;
option IterLim =99999;
option LimRow =0;
option LimCol =0;
option reslim =99999;

sets T /1*35/
tfirst(T)
tlast(T)
tearly(T)
tlate(T)
n           /USA,EUROPE,JAPAN,RUSSIA,EURASIA,CHINA,INDIA,MIE,AFRICA,LATIN,OHI,OA/
*ANNEXI(n)   /USA,OHI,EUROPE,EE/
*ROW(n)      /MI,LMI,CHINA,LI/
ITER        /1*100/
REPS        /1*5/;
tfirst(T)=yes$(ord(T)=1);
tlast(T)=yes$(card(T));
tearly(T)=yes$(ord(T) le 20);
tlate(T)=yes$(ord(t) ge 21);
scalars
gamma        capital share                         /0.3/
delta        annual rate of depreciation(percent)  /10/ 
lugr         rate of decline in land use emissions     /10/
m0           initial atmospheric concentration of CO2(GTC)  /851/
mu0          initial concentration of co2 in upper box(GTC) /460/
ml0          initial concentration of co2 in deep oceans(GTC)/1740/
te0          initial atmospheric temperature(deg C above preind)/0.85/
tl0          initial temperature of deep oceans              /.0068/
sat          speed of adjustment parameter for atm.temperature  /0.1005/
cs           equilibrium atm temp increase for co2 doubling(deg C) /3.1/
hgal         coefficient of heat loss from atm to deep oceans  /0.088/
srtp0        initial social rate of time perference(pct per yr) /3/
srtpgr       rate of decline of srtp(pct per year)    /0.25719/
q            utility drivative scaling factor   /10/
traa         atmosphere to atmosphere /88/
trua         upper box to atmosphere  /19.6/
trau         atmosphere to upper box  /12/
truu         upper box to upper box   /79.7/
trlu         deep oceans to upper box /0.147/
trul         upper box to deep oceans /0.7/
trll         deep oceans to deep oceans /99.853/
wpdvc        world present value of consumption($billion)
pdvcbase     world present value of consumption in base($billion)
tei          total economic impact of policy($billion);
sets outwelf categories of data on welfare and production fuction/y0,dam1,dam2,k0,alpha,B1,B2,SIG_A,SIG_I,E_F0,A1,A2/
*dam1         damage coefficient on temperature
*dam2         damage coefficient on temperature squared
*k0           initial capital stock ($trill)
*alpha        elasticity of output with respect to carbon services
*B1           
*B2           
     empopprd categories of data on emission and population/lu0,l0,lgr,lgrgr,tfpgr,tfpgrgr/;
*lu0          initial carbon emissions from land use change(GTC per yr)
*l0           initial population(million)
*lgr          initial population growth rate(pct per decade)
*lgrgr        growth rate of lgr
*tfp0         initial total factor productivity
*tfpgr        intiall productivity growth rate(pct per decade)
*tfpgrgr      rate of decline in tfpgr;
TABLE OW(OUTWELF,N)
            USA       EUROPE   JAPAN     RUSSIA   EURASIA  CHINA    INDIA     MIE     AFRICA   LATIN    OHI     OA
y0          17.060    12.898   4.810    3.609     2.720    18.559   7.525     8.157   3.338    8.434    9.452   10.348 
dam1        0         0        0        0         0        0.078    0.436     0.278   0.341    0.061    0       0.176
dam2        0.141     0.159    0.162    0.115     0.130    0.126    0.169     0.159   0.198    0.135    0.156   0.173  
k0          32.957    28.793   12.777   5.593     4.830    49.296   13.684    13.820  5.562    17.346   21.242  18.717
alpha       0.3       0.3      0.3      0.3       0.3      0.3      0.3       0.3     0.3      0.3      0.3     0.3
B1          0.07      0.1      0.05     0.1       0.15     0.1      0.1       0.1     0.1      0.1      0.05    0.1
B2          2.887     2.887    2.887    2.887     2.887    2.887    2.887     2.887   2.887    2.887    2.887   2.887
SIG_A       0.14      0.2      0.25     0.2       0.15     0.2      0.2       0.15    0.15     0.15     0.25    0.15
SIG_I       9         10       12       10        7.5      8        8         7       7        7        12      7
E_F0        1.398     0.588    0.317    0.463     0.228    2.767    0.638     0.736   0.219    0.486    0.715   0.642
A1          0.01102   0.02     0.01174  0.02093   0.01523  0.02     0.02093   0.021   0.021    0.02093  0.01174 0.02093
A2          1.5       1.5      1.5      1.5       1.5      1.5      1.5       1.5     1.5      1.5      1.5     1.5   ;
TABLE EPP(EMPOPPRD,N)
            USA       EUROPE   JAPAN    RUSSIA    EURASIA  CHINA    INDIA     MIE     AFRICA   LATIN    OHI     OA  
lu0         0         0        0        0         0        0        0         0       0.3      0.6      0       0.7
l0         0.320      0.319    0.127    0.145     0.149    0.141    0.131     0.408   0.930    0.615    0.246   0.137 
lgr        3.73       1.08     4.28     2.08      2.08     3.07     8.09      8.09    8.09     8.09     4.28    8.09 
lgrgr      11.12      101.33   50.88    67.36     67.36    97.13    12.44     23.6399 12.44    12.44    50.88   12.44
tfpgr      0.045      0.065    0.065    0.08      0.08     0.08     0.07      0.07    0.07     0.07     0.065   0.07
tfpgrgr    0.0095     0.011    0.011    0.01      0.01     0.00965  0.009     0.009   0.009    0.009    0.011   0.009    ;

Parameters

LU(T,N) Carbon emissions from land-use change (GTC per year)
L(T,N) Population (billions)
LCGR(T,N) Cumulative exponential population growth rate
TFP(T,N) Total factor productivity
TFPCGR(T,N) Cumulative exponential productivity growth rate
DAMCOEFF(T,N) Damage coefficient in base case
PCYRATIO(T,N) Ratio of per capita output to 1995
TFP0(N)           Initial calibrated total productivity factor coef;


LCGR(T,N)=(EPP("LGR",N)/EPP("LGRGR",N))*(1-EXP(-(ORD(T)-1)*EPP("LGRGR",N)/100));

L(T,N)=EPP("L0",N)*EXP(LCGR(T,N));

TFP0(N) = OW("Y0",N)*(1+OW("A1",N)*(0.85/2.5)**OW("A2",N))
                   /(OW("K0",N)**GAMMA*EPP("L0",N)**(1-GAMMA));

TFPCGR(T,N)=EXP( EPP("TFPGR",N) *EXP(- EPP("TFPGRGR",N)*(ORD(T)-1))*(ORD(T)-1));

LU(T,N)=EPP("LU0",N)*(1-LUGR/100)**(ORD(T)-1);

TFP(T,N)=TFP0(N)*TFPCGR(T,N);

*TFP(T,N) = TFP0(N)*EXP( EPP("TFPGR",N) *EXP(- EPP("TFPGRGR",N)*(ORD(T)-1))*(ORD(T)-1));


PARAMETERS
YEAR(T) Year
EXOGFORC(T) Exogenous forcing (W per meter squared)
SRTP(T) Social rate of time preference (pct per year)
STPF(T) Social time preference factor
RHOSTAR(T) Unnormalized social welfare discount factor
SWDF(T) Social welfare discount factor
WINDEM(T) World industrial emissions (GtC per year)
SWDFBASE(T) Social welfare discount factor in base case
CTAX(T,N) Carbon tax ($ per metric ton)

ALGORITHM
RHOPREV(T)
SWDFPREV(T)
RHO(T)

SIG0(N)           Initial E\Y ratio coeff
SSIG(N)
DSIG(N)
SIGMA(T,N)        Emission-output ratio
GSIG(T,N);

*  GHG emissions/ output ratio trend.

SSIG(N) = LOG(OW("SIG_A",N));
SIG0(N) = (OW("E_F0",N)) / OW("Y0",N);
DSIG(N) = LOG(1 - LOG(1 + OW("SIG_I", N) / 100) / SSIG(N));
GSIG(T,N) = SSIG(N) * (1-EXP(-DSIG(N)*(ORD(T)-1)));
SIGMA(T,N) = SIG0(N) * EXP(GSIG(T,N));

*** NAMES FOR DISCOUNT FACTOR USED IN ITERATIVE SEARCH
YEAR(T)=1995+(ORD(T)-1)*10;
EXOGFORC(T)=(-0.1965+(ORD(T)-1)*0.13465)$(ORD(T)<21)+1.15$(ORD(T)>22);
SRTP(T)=100*(SRTP0/100)*EXP(-(SRTPGR/100)*5*(ORD(T)-1));
STPF("1")=1;
LOOP(T,STPF(T+1)=STPF(T)/((1+SRTP(T)/100)**5););




VARIABLES
Y(T,N) Output ($trillions per year)
K(T,N) Capital stock ($trillions per year)
deltaK(T,N)
CA(T,N) Industrial carbon emissions (GTC per year)
C(T,N) Consumption ($trillions per year)
MIU(T,N);
VARIABLES
E(T,N) World carbon emissions (GTC per year)
ES(T)
M(T) Atmospheric concentration of carbon (GTC)
MU(T) Concentration of carbon in upper box (GTC)
ML(T) Concentration of carbon in deep oceans (GTC)
TE(T) Atmospheric temperature (deg C above preindustrial)
F(T) Radiative forcing (W per meter squared)
TL(T) Deep ocean temperature (deg C above preindustrial)
*CCA(T) Cumulative industrial carbon emissions (GTC)
UTILITY Social welfare function
YS(T);
POSITIVE VARIABLES Y, K, CA, C, E, M, MU, ML, TE, F, TL, MIU;

K.LO(T,N) = 0.9*OW("K0",N);
Y.LO(T,N) = 0.9*OW("Y0",N);
*Y.UP(TFIRST,N) = 1.2*OW("Y0",N);
C.LO(T,N) = 0.5*OW("Y0",N);
*MIU.FX(T,N)=0;
*CCA.LO(T)=0;
ES.LO(T)=0;
M.LO(T)=M0;
ML.LO(T)=ML0;
MU.LO(T)=MU0;
*** MIU CONTRONAL OPTION
MIU.LO(T,N)=0.01;
F.LO(T)=4.1*LOG(M.LO(T)/596.4)/LOG(2)+EXOGFORC(T);
TE.LO(T)=TE0;
TL.LO(T)=TL0;
CA.LO(T, N)=0.1;
CA.UP(T, N)=1000;
C.LO(T, N)=0.01;
DELTAK.UP(T,N)=0.15;
*C.LO(T,N) = 0.5*OW("K0",N);
***STARTING VALUES FOR BASE CASE
$INCLUDE STARTVAL
YS.l(T)=1/SUM(N,Y.L(T,N));
RHOSTAR(T)=SUM(N, Y.L(T,N)*STPF(T)*L(T,N)/C.L(T,N))*YS.l(T);
SWDF(T)=RHOSTAR(T)/RHOSTAR('1');

***
EQUATIONS
YY(T,N) Output
BC(T,N) Budget constraint
KFIRST(T,N) First period capital stock
KK(T,N) Capital accumulation equation
DELTAKK(T,N)
*CCTFIRST(T) First period cumulative carbon
*CCACCA(T) Cumulative carbon emissions
ACCA(T,N) carbon emissions
EE(T,N)
EES(T) World emissions
MFIRST(T) First period atmospheric concentration
MM(T) Atmospheric concentration
MUFIRST(T) First period upper box concentration
MUMU(T) Upper box concentration
MLFIRST(T) First period deep ocean concentration
MLML(T) Deep ocean concentration
TEFIRST(T) First period temperature
TETE(T) Atmospheric temperature
FF(T) Radiative forcing
TLFIRST(T) First period deep ocean temperature
TLTL(T) Deep ocean temperature
OBJ Objective function;

YY(T,N)..       Y(T,N) =E= TFP(T,N)*K(T,N)**GAMMA*L(T,N)**(1-GAMMA)
                   *(1-OW("B1",N)*(MIU(T,N)**OW("B2",N)))
                   /(1+(OW("A1",N))*((TE(T)/2.5)**OW("A2",N)));

KFIRST(TFIRST,N).. K(TFIRST,N)=E=OW("K0",N);

KK(T+1,N).. K(T+1,N)=E=((1-DELTA/100)**5)*K(T,N)+5*(Y(T,N)-C(T,N));

DELTAKK(T+1,N).. DELTAK(T+1,N)=E=(K(T+1,N)-K(T,N))/K(T,N) ;

BC(T,N).. C(T,N)=L=Y(T,N);

*CCTFIRST(TFIRST).. CCA(TFIRST)=E=0;

*CCACCA(T+1).. CCA(T+1)=E=CCA(T)+10*SUM(N, CA(T,N));

ACCA(T,N) .. CA(T,N) =E= SIGMA(T,N)*(1-MIU(T,N))*TFP(T,N)*
                        K(T,N)**GAMMA*L(T,N)**(1-GAMMA);

EE(T,N)..       E(T,N) =E= (SIGMA(T,N)*(1-MIU(T,N))*TFP(T,N)*
                        K(T,N)**GAMMA*L(T,N)**(1-GAMMA)+LU(T,N));
EES(T)..     ES(T) =E=SUM(N, E(T,N));

MFIRST(TFIRST).. M(TFIRST)=E=M0;

MM(T+1)..
M(T+1)=E=5*ES(T)+(TRAA/100)*M(T)+(TRUA/100)*MU(T);
MUFIRST(TFIRST).. MU(TFIRST)=E=MU0;
MUMU(T+1)..
MU(T+1)=E=(TRAU/100)*M(T)+(TRUU/100)*MU(T)+(TRLU/100)*ML(T);
MLFIRST(TFIRST).. ML(TFIRST)=E=ML0;
MLML(T+1).. ML(T+1)=E=(TRUL/100)*MU(T)+(TRLL/100)*ML(T);

TEFIRST(TFIRST).. TE(TFIRST)=E=TE0;

TETE(T+1).. TE(T+1)=E=TE(T)+(SAT/2)*(F(T)-(4.1/CS)*TE(T)-0.088*(TE(T)-TL(T)));

FF(T).. F(T)=E=4.1*LOG(M(T)/596.4)/LOG(2)+EXOGFORC(T);

TLFIRST(TFIRST).. TL(TFIRST)=E=TL0;

TLTL(T+1).. TL(T+1)=E=TL(T)+(0.025/2)*(TE(T)-TL(T));

OBJ.. UTILITY=E=Q*SUM(T, SWDF(T)*SUM(N, C(T,N)));

***SOLVING BASE CASE
MODEL BASE/YY, KFIRST, KK, BC,
EE,EES, MFIRST, MM,
MUFIRST, MUMU, MLFIRST, MLML, TEFIRST, TETE, FF,DELTAKK,
TLFIRST, TLTL, OBJ/;
LOOP (ITER,SWDF(T)=RHOSTAR(T)/(RHOSTAR('1'));
BASE.OPTFILE=1;
SOLVE BASE MAXIMIZING UTILITY USING NLP;

RHOPREV(T)=SUM(N, Y.L(T,N)*STPF(T)*L(T,N)/C.L(T,N))/(SUM(N,Y.L(T,N)));
SWDFPREV(T)=RHOPREV(T)/RHOPREV('1');
DISPLAY SWDF, SWDFPREV;
RHO(T)=RHOSTAR(T)+0.1*(RHOPREV(T)-RHOSTAR(T));
RHOSTAR(T)=RHO(T);
DISPLAY TE.L;);
SWDFBASE(T)=SWDF(T);
***
***BASE CASE OUTPUT
PCYRATIO(T,N)=(Y.L(T,N)/(L(T,N)+0.001))/(Y.L("1",N)/(L("1",N)+0.001)+0.001);
WINDEM(T)=SUM(N, CA.L(T,N));
CTAX(T,N)$(KK.M(T,N) NE 0)= -1000*(EE.M(T,N)/KK.M(T,N));
PDVCBASE=10*1000*UTILITY.L/Q;
DISPLAY PCYRATIO, WINDEM, PDVCBASE;
***

$include OUTPUT_OPTIMAL.gms




















