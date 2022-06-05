clear all
clc
beta1=1.0; alpha2=0.5; c1=0.01; c2=0.005;
tend = 20;%the end time to run the simulation
% as a matrix
u0vec = [100, 50, 100; %make a matrix of ICs
80, 50, 170];
u0size = size(u0vec); %size of the matrix
numICs = u0size(2); % extract number of ICs
rhs=@(t, x)[beta1*x(1)-c1*x(1)*x(2); c2*x(1)*x(2)-alpha2*x(2)];

for k = 1:numICs %loop over each IC
u0 = u0vec(:, k); %extract the kth column

[tsol, usol] = ode45(rhs, [0, tend], u0);
Xsol = usol(:, 1); Ysol = usol(:, 2);
plot(Xsol, Ysol);
hold on;
end
% makearrows, see Appendix for this function
c_dirplot(rhs, 0, 800, 0, 300, 11);
axis([0,300, 0, 200]);
figure
plot(Xsol,Ysol)
title('Phase Plane Plot')
xlabel('Prey Population')
ylabel('Predator Population')
