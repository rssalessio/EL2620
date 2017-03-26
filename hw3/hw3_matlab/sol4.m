clc; clear; close all;
jasdata

%% Comparative
design1
sim('planemodel3');
figure;
hold on;
plot(t,theta);
grid;
xlabel('Time [s]');
ylabel('Angles [rad]');
title('Pitch angle');

design2

sim('planemodel3');
hold on;
plot(t,theta);
grid;
xlabel('Time [s]');
ylabel('Angles [rad]');
title('Pitch angle');
legend('Design1 output', 'Design2 output');
%
design3
sim('planemodel3');
%  cl
hold on;
plot(t,theta);
grid;
xlabel('Time [s]');
ylabel('Angles [rad]');
title('Pitch angle');
legend('design1', 'design2','design3');
grid;
%% Design2
design2
[A2,B2,C2,D2]=linmod('planemodel2');
sys = ss(A2,B2,C2,D2);
figure;
bode(sys);
grid;

figure;
nyquist(sys);
grid;

%G has phase -pi for omega = 4.41 rad/sec and for omega->infty
%G(j4.41) = -7.51 db->0.4212
0.4212*8/(10*pi)%=Amplitude oscillation...same amplitude as design 1
2*pi/4.4 %lower period..more oscillations
%% Design3
design3
[A2,B2,C2,D2]=linmod('planemodel2');
sys = ss(A2,B2,C2,D2);
figure;
bode(sys);
grid;

figure;
nyquist(sys);
grid;

%w=8.15 rad/s, ReG() = -0.25

0.25*8/(10*pi)%=Amplitude oscillation...same amplitude as design 1..0.06
2*pi/8.15 %lower period..more oscillations...0.77s


% With design 2 the system is faster but the pilot is not, so the amplitude
% is still the same but oscillations are more freuqnet
% With design 3 also the pilot is faster, so he tries to react in a quicker
% way, but this induces more frequent oscillations, but the amplitude is
% decreased
%