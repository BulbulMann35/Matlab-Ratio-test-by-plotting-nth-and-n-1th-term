% Epidemic model of influenza  S'=-beta*S*I, I'=beta*S*I-gama*I, R'=gama*I,
% S(0)=s0, I(0)=i0, R(0)=0

clear all
clc
beta=2.18*10^(-3);%.00218
gama=0.44;
xprime=@(t,x)[-beta*x(1)*x(2); beta*x(1)*x(2)-gama*x(2); gama*x(2)];
x0=[762 1 0];
tspan=[0,20];
[t,x]=ode45(xprime,tspan,x0);
Ssol=x(:,1);
Isol=x(:,2);
Rsol=x(:,3);
plot(t, Ssol, 'b','LineWidth',2);
hold on
plot(t, Isol, 'r','LineWidth',2);
hold on
plot (t, Rsol, 'g','LineWidth',2)
h = legend('Susceptible','Infectives','Recovered',1);
set(h,'Interpreter','none')
title('Epidemic model of Influenza');
xlabel('time t (days)');
ylabel('population size');
%plot(t,x)
