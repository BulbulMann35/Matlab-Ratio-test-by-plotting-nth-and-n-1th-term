clear all
clc
r=0.1:0.2:1;
tspan=[0 30];
x0=5.32;
[t,x]=ode45(@(t,x)r*t,tspan,x0);
[t,x]
plot(t,x,'-')
hold on
end
%}
