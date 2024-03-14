* This is the put file for the results of market solution.

FILE MOUT;
PUT MOUT;
MOUT.TJ = 1;

PUT 'SIMULATION:', @20, SYSTEM.TITLE //;
PUT        'DATE:', @20, SYSTEM.DATE //;
PUT        'TIME:', @20, SYSTEM.TIME //;
PUT @20, "BASE SOLUTION" /;

PUT // @20, "Y" /;
PUT @5, LOOP(N, PUT@(ord(N)*10), N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), Y.L(T,N):9:5));

PUT // @20, "C" /;
PUT @5, LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), C.L(T,N):9:5));

PUT // @20, "L" /;
PUT @5, LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), L(T,N):9:5));

PUT // @20, "K" /;
PUT @5, LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), K.L(T,N):9:5));

PUT // @20, "MIU" /;
PUT @5, LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), MIU.L(T,N):9:6));

PUT // @20, "E" /;
PUT @5, LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), E.L(T,N):9:5));

PUT // @20, "SIGMA" /;
PUT @5, LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), SIGMA(T,N):9:5));

PUT // @20, "TFP" /;
PUT @5, LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), TFP(T,N):9:5));

PUT // @20, "CTAX" /;
PUT @5, LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), CTAX(T,N):9:5));



*PUT // @5, "YS", @15, "ES", @25, "M", @35, "TE", @45, "TTE.M", @55, "M.M", @65, "WELFARE" /;
PUT // @15, "ES", @25, "TE"/;
LOOP(T, PUT / T.TL:<2;
        PUT @15, ES.L(T):9:5,
        PUT @35, TE.L(T):9:5
);


PUTCLOSE MOUT;

FILE MUT  /BAU.xls/;
PUT MUT;
MUT.PC = 6;

PUT 'SIMULATION:', @20, SYSTEM.TITLE //;
PUT        'DATE:', @20, SYSTEM.DATE //;
PUT        'TIME:', @20, SYSTEM.TIME //;
PUT @20, "BASE SOLUTION" /;

PUT // @20, "Y" /;
PUT @5,"", LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), Y.L(T,N):9:5));

PUT // @20, "C" /;
PUT @5,"", LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), C.L(T,N):9:5));

PUT // @20, "L" /;
PUT @5,"", LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), L(T,N):9:5));

PUT // @20, "K" /;
PUT @5,"", LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), K.L(T,N):9:5));

PUT // @20, "MIU" /;
PUT @5,"", LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), MIU.L(T,N):9:6));

PUT // @20, "E" /;
PUT @5,"", LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), E.L(T,N):9:5));

PUT // @20, "SIGMA" /;
PUT @5, LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), SIGMA(T,N):9:5));

PUT // @20, "TFP" /;
PUT @5, LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), TFP(T,N):9:5));

PUT // @20, "CTAX" /;
PUT @5, LOOP(N, PUT N.TL:10);
LOOP(T, PUT / T.TL:<2;
LOOP(N, PUT @(ORD(N)*10-4), CTAX(T,N):9:5));


*PUT // @5, "YS", @15, "ES", @25, "M", @35, "TE", @45, "TTE.M", @55, "M.M", @65, "WELFARE" /;
PUT // @15, "ES", @25, "TE",@20/;
LOOP(T, PUT / T.TL:<2;
        PUT @15, ES.L(T):9:5,
        PUT @35, TE.L(T):9:5
);



PUTCLOSE MUT;
