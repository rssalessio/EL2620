%% Data for JAS Gripen Mach 0.6, altitude 1km

A =[ -1.3936    0.9744   -0.0019   -0.5349   -0.0071   -1.0562    0.4891;
    5.6870   -1.1827    0.0002  -25.9398    7.9642  -23.8594   -6.2531;
         0    1.0000         0         0         0         0         0;
         0         0         0  -20.0000         0 -312.5000         0;
         0         0         0         0  -20.0000         0 -312.5000;
         0         0         0         0         0 -125.0000         0;
         0         0         0         0         0         0 -125.0000];

B =[ 0     0;
     0     0;
     0     0;
     0     0;
     0     0;
     8     0;
     0     8];

C =[ 1     0     0     0     0     0     0;
     0     1     0     0     0     0     0;
     0     0     1     0     0     0     0;
     0     0     0     1     0     0     0;
     0     0     0     0     1     0     0;
     0     0     0     0     0     1     0;
     0     0     0     0     0     0     1];

D =[ 0     0;
     0     0;
     0     0;
     0     0;
     0     0;
     0     0;
     0     0];

Ctheta=[0   0   1  0    0   0   0 ];