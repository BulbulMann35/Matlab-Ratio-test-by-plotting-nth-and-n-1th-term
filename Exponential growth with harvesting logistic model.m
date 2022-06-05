% solving differential equation Exponential growth with harvestinglogistic model
% x'(t)=r*x(1-x/k)-h, where k=r/(gama)or x'(t0=-r/K(x*x-K*x+k*h/r)
%figure can not be found like book figure pg 63
clear all
clc
r=1;
%gama=.3;
K=1000;
%h=9/10;K=10
h=100;
tspan = [0 8];
%t=linspace(0,5);
%for k=1:5;
for x0 = 150:50:1200;
%x0=1000;
[t,x] = ode45(@(t,x) (r*x*(1-x/K))-h, tspan, x0);
%[t,x] = ode45(@(t,x) -r/K*(x*x-K*x+K*h/r), tspan, x0);
%figure (2)
plot(t,x,'-')
hold on
end
