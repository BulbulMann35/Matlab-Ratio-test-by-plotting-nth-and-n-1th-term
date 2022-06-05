% Drug assimillation in to Blood A single fast dissolving Cold pill
%Model x'(t)=-k1x, y'(t)=k1x-k2y, x(0)=x0, y(0)=0
clear all
clc
k1=1.386;k2=0.1386;
tend=15; %end time in hours
x0=[1 0];
rhs=@(t, x)[-k1*x(1); k1*x(1)-k2*x(2)];
[t, x]=ode45(rhs, [0, tend],x0);
%plot(t,x)
%figure
xsol=x(:,1);
ysol=x(:,2);
plot(t, xsol, 'b');
hold on
plot(t, ysol, 'g');
