figure;
ezplot('log(y)-y+log(x)-x+2.1');
grid;
axis([0 10 0 10]);

hold on;
ez2=ezplot('log(y)-y+log(x)-x+2.5');
ez3=ezplot('log(y)-y+log(x)-x+3.1');
ez4=ezplot('log(y)-y+log(x)-x+6');
set(ez2,'color',[1 0 0])
set(ez3,'color',[0 0 1])
set(ez4,'color',[0 0 0])
legend('V(x,y)=-2.1','V(x,y)=-2.5','V(x,y)=-3.1','V(x,y)=-6')
title('V(x,y)');
xlabel('x'); ylabel('y');