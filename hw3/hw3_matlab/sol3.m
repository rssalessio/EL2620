clc; clear all;
jasdata
design1
%The relay is defined as follow: out =0.2 if in > eps, out =-02 if in <-eps
%D=0.2
[A2,B2,C2,D2]=linmod('planemodel2');
sys = ss(A2,B2,C2,D2);
figure;
bode(sys);
grid;

figure;
nyquist(sys);
grid;
% G N=-1

%G has phase -pi for omega = 2.77 rad/sec and for omega->infty
%G(j2.77) = -0.402= -1/N(a)= -piA/4D , D=0.2=2/10
%-0.402 = -pi*A*10/8 -> 0.402*8/10pi=0.1024
0.402*8/(10*pi)%=Amplitude oscillation
2*pi/2.77
%period-> 2pi/2.77 = 2.2683 seconds.
%%
sim('planemodel3');
figure;
plot(t,theta);
grid;
xlabel('Time [s]');
ylabel('Angles [rad]');
title('Pitch angle');