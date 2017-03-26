 clc; clear ;
jasdata
design1

%only the angle of attack, pitch rate, elevator angle, spoiler angle are
%affected by the feedback
disp('Feedback gain');
L
disp('----');

Anew = A-B*L;
eigAnew = eig(Anew);
disp('New eigenvalues of the system: ');
eigAnew
disp('----');
%we can see that the feedback stabilizes the flight dynamics, all the other
%eigenvalues are nearly not affected

s=tf('s');
Kp=0.2;
Td=0.5;
N=10;
G = Kp *exp(-0.3*s)*(1+Td*s)/(1+Td*s/N);
figure;
bode(G);
grid;
title('Pilot PD Controller -with phase');
G = Kp *(1+Td*s)/(1+Td*s/N);
figure;
bode(G);
grid;
title('Pilot PD Controller -with outphase');
%It's natural to have some phase because a human person needs time to
%react. The proportional part is also natural since the pilot tries, in
%normla condition, to give commands proportional to the error.
%The derivative action acts on the error, so we are looking at the
%derivative of the error, which is a crude approximation of what will the
%error look in the future. Thus the pilot tries to control based on what he
%thinks will happen. if the error changes rapidly the pilot may panic, and
%that is well represented by the derivative action (the slope of the error
%changes continuously -> the derivative action changes sign frequently).
%The integral action is not included since the pilot does not care about
%the history of the error, but only to what is the error now.


%% simulate planemodel
sim('planemodel');
figure;
plot(t,x(:,[4 5 ]));
grid;
xlabel('Time [s]');
ylabel('Angles [rad]');
legend('Elevator angle', 'Spoiler angle');
title('Rudder angles');

figure;
plot(t,x(:,[1 2 3]));
grid;
xlabel('Time [s]');
ylabel('Measurement');
legend('Attack angle [rad]', 'Pitch rate [rad/s]','Pitch angle [rad]');
title('Attack angle, Pitch and Pitch rate')

% The rudder angles heavily influence the pitch rate, which changes the
% pitch, and the attack angle. For large attack angle we have instability
% and the model may not be correct anymore.
% Notice that the pitch rate affects both the attack angle and the pitch in
% a similar way since A12 approx 1 and A 32 = 1. Having high pitch rate may
% also invalidate the model. Notice how the attack angle at the pick is
% about 11.5°.

