clear all; clc; close all;
jasdata



design1
sim('planemodel4_extraquestion');
figure;
plot(t,theta);

design2
sim('planemodel4_extraquestion');
hold on;
plot(t,theta);


design3
sim('planemodel4_extraquestion');
hold on;
plot(t,theta);


hold on;
plot(t,theta);
xlabel('Time [s]');
ylabel('Angles [rad]');
title('Pitch angle');
legend('Design1 output', 'Design2 output','Design 3 output');hold on;
grid;
sim('comparison2');
figure;
xlabel('Time [s]');
ylabel('y(t)');
plot(ScopeData1(:,1), ScopeData1(:,2)); hold on;
plot(ScopeData1(:,1), ScopeData1(:,3)); hold on;
plot(ScopeData1(:,1), ScopeData1(:,4)); hold on;
plot(ScopeData1(:,1), ScopeData1(:,5)); hold on;
plot(ScopeData1(:,1), ScopeData1(:,6)); hold on;
grid;
title('Rate limiter compensation simulation');
legend('Rate Limiter output', 'Feedback with integrator', 'Feedback with lowpass', 'Feedback and bypass', 'Input u(t)');