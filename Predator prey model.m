% preditor and pray model x'=beta1*x-c1*x*y-p1*x , y'=c2*x*y-alpha2*y-p2*y
% where beta1=b1-a1,alpha2=b2-c1 and c2=fc1
%Effect of DDT whaere p1 and p2 are per-capita rate for prey and predator
clear all 
clc
beta1=0.1; alpha2=0.5; c1=0.001; c2=0.005; p1=0.1; p2=0.1;
tend=20;
x0=[200;80];
rhs=@(t,x)[beta1*x(1)-c1*x(1)*x(2)-p1*x(1) ; c2*x(1)*x(2)-alpha2*x(2)-p2*x(2)];
[t,x]=ode45(rhs,[0,tend],x0);
xsol=x(:,1);
ysol=x(:,2);
plot(t,xsol,'b');
hold on
plot(t,ysol,'r');
xlabel('time t (years)')
ylabel('population density')
title('predator and prey analysis DDT sprey model')
legend('prey','predator','location','north')
