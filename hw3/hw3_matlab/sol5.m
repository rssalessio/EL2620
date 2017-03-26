clear all; clc;close all;
jasdata

design1
sim('planemodel3');
figure;
plot(t,theta);

design2
sim('planemodel3');
hold on;
plot(t,theta);


design3
sim('planemodel3');
hold on;
plot(t,theta);

design1;
T_f=0.03;
sim('planemodel3');

hold on;
plot(t,theta);
xlabel('Time [s]');
ylabel('Angles [rad]');
title('Pitch angle');
legend('design1', 'design2','design3','improved design');hold on;
grid;


%%
[A2,B2,C2,D2]=linmod('planemodel2');
sys = ss(A2,B2,C2,D2);
figure;
bode(sys);
grid;

figure;
nyquist(sys);
grid;


%G has phase -pi for omega = 5.59 rad/sec and for omega->infty
%G(jw) =-0.147
0.147*8/(10*pi)%=Amplitude oscillation...0.04
2*pi/5.99 %lower period..more oscillations ->1.05 sec

% with this solution the oscillation amplitude is better than design 3 an
% also the period is larger. with respect to design 2 it has better
% amplitude but worse period. What i did is to leave the aircraft slow as
% in design1  but make the pilot signal faster. by making the aircraft
% slower the oscillation period can't be small and the pilot signal faster
% permits to avoid large oscillations