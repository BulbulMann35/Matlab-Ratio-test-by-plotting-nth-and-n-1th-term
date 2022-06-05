%Solving DE exponential growth model
%x'(t)=(b-d)*x=r*x
clear all
clc
r=0.017;
tspan=[0 30];
x0=5.32;
[t,x]=ode45(@(t,x)r*t,tspan,x0);
[t,x]
plot(t,x,'-')
