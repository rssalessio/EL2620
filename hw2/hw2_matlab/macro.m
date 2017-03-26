% macro.m
% 
% > K=0.5; macro
%
time = 15;
bi=0; % Not bounded signal
sim('hw2',time)
subplot(221)
plot(t,[th_in,th_out,ref])
title(['K= ',num2str(K)])
legend('theta_{in}','theta_{out}','reference')  
subplot(222)
plot(t,[dth_in,dth_out])
title('Unbounded')
legend('dtheta_{in}','dtheta_{out}')

bi=1; % Not bounded signal
sim('hw2',time)
subplot(223)
plot(t,[th_in,th_out,ref])
title(['K= ',num2str(K)])
legend('theta_{in}','theta_{out}','reference')  
subplot(224)
plot(t,[dth_in,dth_out])
title('Bounded')
legend('dtheta_{in}','dtheta_{out}')