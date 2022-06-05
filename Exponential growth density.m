%Solving DE exponential growth density
%x'(t)=r*x-(gama*x*x)
clear all
clc
r=0.027;
gama=0.01;
tspan=[0 10];
x0=0;
[t,x]=ode45(@(t,x)(r*t-(gama*x*x)),tspan,x0);
[t,x]
plot(t,x,'-')
