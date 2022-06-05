%varing c0 (Burley_griffin model)
clear all
clc
%for cin=1:3;
cin=0;
F=4*12;V=280;
for c0=1:6;
  tspan = [0 30];
  [t,c] = ode45(@(t,c) F/V*(cin-c), tspan, c0);
  plot(t,c,'-')
  hold on
end
%}
