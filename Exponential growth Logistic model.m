% solving differential equation Exponential growth logistic model
% x'(t)=r*x(1-x/k)where k=r/(gama)
clear all
clc
r=1;
%gama=.3;
K=1000;
tspan = [0 8];
%t=linspace(0,5);
%for k=1:5;
for x0 = 0:25:1200;
[t,x] = ode45(@(t,x) r*x*(1-x/K), tspan, x0);
%figure (2)
plot(t,x,'-')
hold on
end
xlabel('Time t');
ylabel('X(t)');
