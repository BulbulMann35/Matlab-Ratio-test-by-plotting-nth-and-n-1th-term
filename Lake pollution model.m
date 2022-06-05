% solving differential equation lake pollution model dC/dt=(F/V)*(cin - C)
clear all
clc
%for cin=1:3;
cin=0;
%F=4*12;V=28;
F=48; V=45800;
c0=10;
%tspan = [0 10];
tspan = [0 5000];
[t,c] = ode45(@(t,c) (F/V)*(cin-c), tspan, c0);
plot(t,c,'-')
hold on
