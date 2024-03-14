*** STARTVAL –STARTING VALUE PROGRAM
PARAMETER
CUMCARB(T) Approximate cumulative carbon eJAPANssions (GTC);
CUMCARB(T)=90*(ORD(T)-1);
EQUATIONS
YYU(T,N) Output
BCU(T,N) Budget constraint
KFU(T,N) First period capital stock
KKU(T,N) Capital accumulation equation
OBJU Objective function

YYO(T,N) Output
BCO(T,N) Budget constraint
KFO(T,N) First period capital stock
KKO(T,N) Capital accumulation equation
OBJO Objective function

YYE(T,N) Output
BCE(T,N) Budget constraint
KFE(T,N) First period capital stock
KKE(T,N) Capital accumulation equation
OBJE Objective function

YYRUSSIA(T,N) Output
BCRUSSIA(T,N) Budget constraint
KFRUSSIA(T,N) First period capital stock
KKRUSSIA(T,N) Capital accumulation equation
OBJRUSSIA Objective function

YYJA(T,N) Output
BCJA(T,N) Budget constraint
KFJA(T,N) First period capital stock
KKJA(T,N) Capital accumulation equation
OBJJA Objective function

YYC(T,N) Output
BCC(T,N) Budget constraint
KFC(T,N) First period capital stock
KKC(T,N) Capital accumulation equation
OBJC Objective function

YYEURASIA(T,N) Output
BCEURASIA(T,N) Budget constraint
KFEURASIA(T,N) First period capital stock
KKEURASIA(T,N) Capital accumulation equation
OBJEURASIA Objective function

YYINDIA(T,N) Output
BCINDIA(T,N) Budget constraint
KFINDIA(T,N) First period capital stock
KKINDIA(T,N) Capital accumulation equation
OBJINDIA Objective function

YYMIE(T,N) Output
BCMIE(T,N) Budget constraint
KFMIE(T,N) First period capital stock
KKMIE(T,N) Capital accumulation equation
OBJMIE Objective function

YYAFRICA(T,N) Output
BCAFRICA(T,N) Budget constraint
KFAFRICA(T,N) First period capital stock
KKAFRICA(T,N) Capital accumulation equation
OBJAFRICA Objective function

YYLATIN(T,N) Output
BCLATIN(T,N) Budget constraint
KFLATIN(T,N) First period capital stock
KKLATIN(T,N) Capital accumulation equation
OBJLATIN Objective function

YYOA(T,N) Output
BCOA(T,N) Budget constraint
KFOA(T,N) First period capital stock
KKOA(T,N) Capital accumulation equation
OBJOA Objective function

;
YYU(T,"USA")..
Y(T,"USA") =E= TFP(T,"USA")*K(T,"USA")**GAMMA*L(T,"USA")**(1-GAMMA)
                   *(1-OW("B1","USA")*(MIU(T,"USA")**OW("B2","USA")))
                   /(1+(OW("A1","USA"))*((TE(T)/2.5)**OW("A2","USA")));
KFU(TFIRST,"USA").. K(TFIRST,"USA")=E=OW("K0","USA");
KKU(T+1,"USA")..
K(T+1,"USA")=E=((1-DELTA/100)**5)*K(T,"USA")+5*(Y(T,"USA")-C(T,"USA"));
BCU(T,"USA").. C(T,"USA")=L=Y(T,"USA");
OBJU.. UTILITY=E=SUM(T, STPF(T)*L(T,"USA")*LOG(C(T,"USA")/(L(T,"USA")+0.001)));

*Y.FX("2","USA")= 17.060;
*K.FX("2","USA")= 32.957;

*OHI
YYO(T,"OHI")..
Y(T,"OHI") =E= TFP(T,"OHI")*K(T,"OHI")**GAMMA*L(T,"OHI")**(1-GAMMA)
                   *(1-OW("B1","OHI")*(MIU(T,"OHI")**OW("B2","OHI")))
                   /(1+(OW("A1","OHI"))*((TE(T)/2.5)**OW("A2","OHI")));
KFO(TFIRST,"OHI").. K(TFIRST,"OHI")=E=OW("K0","OHI");
KKO(T+1,"OHI")..
K(T+1,"OHI")=E=((1-DELTA/100)**5)*K(T,"OHI")+5*(Y(T,"OHI")-C(T,"OHI"));
BCO(T,"OHI").. C(T,"OHI")=L=Y(T,"OHI");
OBJO.. UTILITY=E=SUM(T, STPF(T)*L(T,"OHI")*LOG(C(T,"OHI")/(L(T,"OHI")+0.001)));
*EUROPE
YYE(T,"EUROPE")..
Y(T,"EUROPE") =E= TFP(T,"EUROPE")*K(T,"EUROPE")**GAMMA*L(T,"EUROPE")**(1-GAMMA)
                   *(1-OW("B1","EUROPE")*(MIU(T,"EUROPE")**OW("B2","EUROPE")))
                   /(1+(OW("A1","EUROPE"))*((TE(T)/2.5)**OW("A2","EUROPE")));
KFE(TFIRST,"EUROPE").. K(TFIRST,"EUROPE")=E=OW("K0","EUROPE");
KKE(T+1,"EUROPE")..K(T+1,"EUROPE")=E=((1-DELTA/100)**5)*K(T,"EUROPE")+5*(Y(T,"EUROPE")-C(T,"EUROPE"));
BCE(T,"EUROPE").. C(T,"EUROPE")=L=Y(T,"EUROPE");
OBJE.. UTILITY=E=SUM(T, STPF(T)*L(T,"EUROPE")*LOG(C(T,"EUROPE")/(L(T,"EUROPE")+0.001)));
*RUSSIA
YYRUSSIA(T,"RUSSIA")..
Y(T,"RUSSIA") =E= TFP(T,"RUSSIA")*K(T,"RUSSIA")**GAMMA*L(T,"RUSSIA")**(1-GAMMA)
                   *(1-OW("B1","RUSSIA")*(MIU(T,"RUSSIA")**OW("B2","RUSSIA")))
                   /(1+(OW("A1","RUSSIA"))*((TE(T)/2.5)**OW("A2","RUSSIA")));
KFRUSSIA(TFIRST,"RUSSIA").. K(TFIRST,"RUSSIA")=E=OW("K0","RUSSIA");
KKRUSSIA(T+1,"RUSSIA")..K(T+1,"RUSSIA")=E=((1-DELTA/100)**5)*K(T,"RUSSIA")+5*(Y(T,"RUSSIA")-C(T,"RUSSIA"));
BCRUSSIA(T,"RUSSIA").. C(T,"RUSSIA")=L=Y(T,"RUSSIA");
OBJRUSSIA.. UTILITY=E=SUM(T, STPF(T)*L(T,"RUSSIA")*LOG(C(T,"RUSSIA")/(L(T,"RUSSIA")+0.001)));
*JA
YYJA(T,"JAPAN")..
Y(T,"JAPAN") =E= TFP(T,"JAPAN")*K(T,"JAPAN")**GAMMA*L(T,"JAPAN")**(1-GAMMA)
                   *(1-OW("B1","JAPAN")*(MIU(T,"JAPAN")**OW("B2","JAPAN")))
                   /(1+(OW("A1","JAPAN"))*((TE(T)/2.5)**OW("A2","JAPAN")));
KFJA(TFIRST,"JAPAN").. K(TFIRST,"JAPAN")=E=OW("K0","JAPAN");
KKJA(T+1,"JAPAN")..
K(T+1,"JAPAN")=E=((1-DELTA/100)**5)*K(T,"JAPAN")+5*(Y(T,"JAPAN")-C(T,"JAPAN"));
BCJA(T,"JAPAN").. C(T,"JAPAN")=L=Y(T,"JAPAN");
OBJJA.. UTILITY=E=SUM(T, STPF(T)*L(T,"JAPAN")*LOG(C(T,"JAPAN")/(L(T,"JAPAN")+0.001)));
*CHINA
YYC(T,"CHINA")..
Y(T,"CHINA") =E= TFP(T,"CHINA")*K(T,"CHINA")**GAMMA*L(T,"CHINA")**(1-GAMMA)
                   *(1-OW("B1","CHINA")*(MIU(T,"CHINA")**OW("B2","CHINA")))
                   /(1+(OW("A1","CHINA"))*((TE(T)/2.5)**OW("A2","CHINA")));
KFC(TFIRST,"CHINA").. K(TFIRST,"CHINA")=E=OW("K0","CHINA");
KKC(T+1,"CHINA").. K(T+1,"CHINA")=E=((1-DELTA/100)**5)*K(T,"CHINA")+5*(Y(T,"CHINA")-C(T,"CHINA"));
*K(T,"CHINA")+10*(Y(T,"CHINA")-C(T,"CHINA"));
BCC(T,"CHINA").. C(T,"CHINA")=L=Y(T,"CHINA");
OBJC.. UTILITY=E=SUM(T, STPF(T)*L(T,"CHINA")*LOG(C(T,"CHINA")/(L(T,"CHINA")+0.001)));
*EURASIA
YYEURASIA(T,"EURASIA")..
Y(T,"EURASIA") =E= TFP(T,"EURASIA")*K(T,"EURASIA")**GAMMA*L(T,"EURASIA")**(1-GAMMA)
                   *(1-OW("B1","EURASIA")*(MIU(T,"EURASIA")**OW("B2","EURASIA")))
                   /(1+(OW("A1","EURASIA"))*((TE(T)/2.5)**OW("A2","EURASIA")));
KFEURASIA(TFIRST,"EURASIA").. K(TFIRST,"EURASIA")=E=OW("K0","EURASIA");
KKEURASIA(T+1,"EURASIA")..
K(T+1,"EURASIA")=E=((1-DELTA/100)**5)*K(T,"EURASIA")+5*(Y(T,"EURASIA")-C(T,"EURASIA"));
BCEURASIA(T,"EURASIA").. C(T,"EURASIA")=L=Y(T,"EURASIA");
OBJEURASIA.. UTILITY=E=SUM(T,STPF(T)*L(T,"EURASIA")*LOG(C(T,"EURASIA")/(L(T,"EURASIA")+0.001)));

*INDIA
YYINDIA(T,"INDIA")..
Y(T,"INDIA") =E= TFP(T,"INDIA")*K(T,"INDIA")**GAMMA*L(T,"INDIA")**(1-GAMMA)
                   *(1-OW("B1","INDIA")*(MIU(T,"INDIA")**OW("B2","INDIA")))
                   /(1+(OW("A1","INDIA"))*((TE(T)/2.5)**OW("A2","INDIA")));
KFINDIA(TFIRST,"INDIA").. K(TFIRST,"INDIA")=E=OW("K0","INDIA");
KKINDIA(T+1,"INDIA")..
K(T+1,"INDIA")=E=((1-DELTA/100)**5)*K(T,"INDIA")+5*(Y(T,"INDIA")-C(T,"INDIA"));
BCINDIA(T,"INDIA").. C(T,"INDIA")=L=Y(T,"INDIA");
OBJINDIA.. UTILITY=E=SUM(T,STPF(T)*L(T,"INDIA")*LOG(C(T,"INDIA")/(L(T,"INDIA")+0.001)));

*MIE
YYMIE(T,"MIE")..Y(T,"MIE") =E= TFP(T,"MIE")*K(T,"MIE")**GAMMA*L(T,"MIE")**(1-GAMMA)
                   *(1-OW("B1","MIE")*(MIU(T,"MIE")**OW("B2","MIE")))
                   /(1+(OW("A1","MIE"))*((TE(T)/2.5)**OW("A2","MIE")));
KFMIE(TFIRST,"MIE").. K(TFIRST,"MIE")=E=OW("K0","MIE");
KKMIE(T+1,"MIE")..
K(T+1,"MIE")=E=((1-DELTA/100)**5)*K(T,"MIE")+5*(Y(T,"MIE")-C(T,"MIE"));
BCMIE(T,"MIE").. C(T,"MIE")=L=Y(T,"MIE");
OBJMIE.. UTILITY=E=SUM(T,STPF(T)*L(T,"MIE")*LOG(C(T,"MIE")/(L(T,"MIE")+0.001)));

*AFRICA
YYAFRICA(T,"AFRICA")..
Y(T,"AFRICA") =E= TFP(T,"AFRICA")*K(T,"AFRICA")**GAMMA*L(T,"AFRICA")**(1-GAMMA)
                   *(1-OW("B1","AFRICA")*(MIU(T,"AFRICA")**OW("B2","AFRICA")))
                   /(1+(OW("A1","AFRICA"))*((TE(T)/2.5)**OW("A2","AFRICA")));
KFAFRICA(TFIRST,"AFRICA").. K(TFIRST,"AFRICA")=E=OW("K0","AFRICA");
KKAFRICA(T+1,"AFRICA")..
K(T+1,"AFRICA")=E=((1-DELTA/100)**5)*K(T,"AFRICA")+5*(Y(T,"AFRICA")-C(T,"AFRICA"));
BCAFRICA(T,"AFRICA").. C(T,"AFRICA")=L=Y(T,"AFRICA");
OBJAFRICA.. UTILITY=E=SUM(T,STPF(T)*L(T,"AFRICA")*LOG(C(T,"AFRICA")/(L(T,"AFRICA")+0.001)));

*LATIN
YYLATIN(T,"LATIN")..
Y(T,"LATIN") =E= TFP(T,"LATIN")*K(T,"LATIN")**GAMMA*L(T,"LATIN")**(1-GAMMA)
                   *(1-OW("B1","LATIN")*(MIU(T,"LATIN")**OW("B2","LATIN")))
                   /(1+(OW("A1","LATIN"))*((TE(T)/2.5)**OW("A2","LATIN")));
KFLATIN(TFIRST,"LATIN").. K(TFIRST,"LATIN")=E=OW("K0","LATIN");
KKLATIN(T+1,"LATIN")..
K(T+1,"LATIN")=E=((1-DELTA/100)**5)*K(T,"LATIN")+5*(Y(T,"LATIN")-C(T,"LATIN"));
BCLATIN(T,"LATIN").. C(T,"LATIN")=L=Y(T,"LATIN");
OBJLATIN.. UTILITY=E=SUM(T,STPF(T)*L(T,"LATIN")*LOG(C(T,"LATIN")/(L(T,"LATIN")+0.001)));

*OA
YYOA(T,"OA")..
Y(T,"OA") =E= TFP(T,"OA")*K(T,"OA")**GAMMA*L(T,"OA")**(1-GAMMA)
                   *(1-OW("B1","OA")*(MIU(T,"OA")**OW("B2","OA")))
                   /(1+(OW("A1","OA"))*((TE(T)/2.5)**OW("A2","OA")));
KFOA(TFIRST,"OA").. K(TFIRST,"OA")=E=OW("K0","OA");
KKOA(T+1,"OA")..
K(T+1,"OA")=E=((1-DELTA/100)**5)*K(T,"OA")+5*(Y(T,"OA")-C(T,"OA"));
BCOA(T,"OA").. C(T,"OA")=L=Y(T,"OA");
OBJOA.. UTILITY=E=SUM(T,STPF(T)*L(T,"OA")*LOG(C(T,"OA")/(L(T,"OA")+0.001)));

MODEL SVUSA /YYU, KFU, KKU, BCU, OBJU/;
SVUSA.OPTFILE=1;
SOLVE SVUSA MAXIMIZING UTILITY USING NLP;
SOLVE SVUSA MAXIMIZING UTILITY USING NLP;

MODEL SVOHI /YYO, KFO, KKO, BCO, OBJO/;
SVOHI.OPTFILE=1;
SOLVE SVOHI MAXIMIZING UTILITY USING NLP;
SOLVE SVOHI MAXIMIZING UTILITY USING NLP;

MODEL SVEUROPE /YYE, KFE, KKE, BCE, OBJE/;
SVEUROPE.OPTFILE=1;
SOLVE SVEUROPE MAXIMIZING UTILITY USING NLP;
SOLVE SVEUROPE MAXIMIZING UTILITY USING NLP;

MODEL SVRUSSIA /YYRUSSIA, KFRUSSIA, KKRUSSIA, BCRUSSIA, OBJRUSSIA/;
SVRUSSIA.OPTFILE=1;
SOLVE SVRUSSIA MAXIMIZING UTILITY USING NLP;
SOLVE SVRUSSIA MAXIMIZING UTILITY USING NLP;

MODEL SVJAPAN /YYJA, KFJA, KKJA, BCJA, OBJJA/;
SVJAPAN.OPTFILE=1;
SOLVE SVJAPAN MAXIMIZING UTILITY USING NLP;
SOLVE SVJAPAN MAXIMIZING UTILITY USING NLP;

MODEL SVCHINA /YYC, KFC, KKC, BCC, OBJC/;
SVCHINA.OPTFILE=1;
SOLVE SVCHINA MAXIMIZING UTILITY USING NLP;
SOLVE SVCHINA MAXIMIZING UTILITY USING NLP;

MODEL SVEURASIA/YYEURASIA, KFEURASIA, KKEURASIA, BCEURASIA, OBJEURASIA/;
SVEURASIA.OPTFILE=1;
SOLVE SVEURASIA MAXIMIZING UTILITY USING NLP;
SOLVE SVEURASIA MAXIMIZING UTILITY USING NLP;

MODEL SVINDIA/YYINDIA, KFINDIA, KKINDIA, BCINDIA, OBJINDIA/;
SVINDIA.OPTFILE=1;
SOLVE SVINDIA MAXIMIZING UTILITY USING NLP;
SOLVE SVINDIA MAXIMIZING UTILITY USING NLP;

MODEL SVMIE/YYMIE, KFMIE, KKMIE, BCMIE, OBJMIE/;
SVMIE.OPTFILE=1;
SOLVE SVMIE MAXIMIZING UTILITY USING NLP;
SOLVE SVMIE MAXIMIZING UTILITY USING NLP;

MODEL SVAFRICA/YYAFRICA, KFAFRICA, KKAFRICA, BCAFRICA, OBJAFRICA/;
SVAFRICA.OPTFILE=1;
SOLVE SVAFRICA MAXIMIZING UTILITY USING NLP;
SOLVE SVAFRICA MAXIMIZING UTILITY USING NLP;

MODEL SVLATIN/YYLATIN, KFLATIN, KKLATIN, BCLATIN, OBJLATIN/;
SVLATIN.OPTFILE=1;
SOLVE SVLATIN MAXIMIZING UTILITY USING NLP;
SOLVE SVLATIN MAXIMIZING UTILITY USING NLP;

MODEL SVOA/YYOA, KFOA, KKOA, BCOA, OBJOA/;
SVOA.OPTFILE=1;
SOLVE SVOA MAXIMIZING UTILITY USING NLP;
SOLVE SVOA MAXIMIZING UTILITY USING NLP;

PARAMETERS
SVE(T) Starting value emissions (GtC per year)
SVM(T) Starting value concentration (GtC)
SVMU(T) Starting value upper level conc (GtC)
SVML(T) Starting value deep ocean conc (GtC)
SVF(T) Starting value forcing (W per m squared)
SVT(T) Starting value temperature (deg C from 1900)
SVTL(T) Starting value deep ocean temperature (deg C from 1900);

SVE(T)=SUM(N, CA.L(T,N))+SUM(N, LU(T,N));
SVM('1')=M0;
SVMU('1')=MU0;
SVML('1')=ML0;
LOOP (T,SVM(T+1)=10*SVE(T)+(TRAA/100)*SVM(T)+(TRUA/100)*SVMU(T);
SVMU(T+1)=(TRAU/100)*SVM(T)+(TRUU/100)*SVMU(T)+(TRLU/100)*SVML(T);
SVML(T+1)=(TRUL/100)*SVMU(T)+(TRLL/100)*SVML(T););
SVF(T)=4.1*LOG(SVM(T)/596.4)/LOG(2)+EXOGFORC(T);
SVT('1')=TE0;
SVTL('1')=TL0;
LOOP (T,SVT(T+1)=SVT(T)+SAT*(SVF(T)-(4.1/CS)*SVT(T)-0.088*(SVT(T)-SVTL(T)));
SVTL(T+1)=SVTL(T)+0.025*(SVT(T)-SVTL(T)););

***