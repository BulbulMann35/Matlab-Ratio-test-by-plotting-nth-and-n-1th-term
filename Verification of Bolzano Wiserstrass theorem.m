%verification of Bolzano Wiserstrass theorem
%every bounded sequence of real number has a monotonic subsequence
%or every bounded secuence has a convergent bounded subsequence
%let 1/n be a bounded sequence
%and 1/2n is the subsequence then we see from the graph that the sequence
%1/2n is also convergent
clear all 
clc
for n=1:40;
    x(n)=n;
    s(n)=1/(2*n);
    y(n)=1/n;
end
plot(x,y,'r')
hold on 
plot(x,s)
xlabel('values of n (natural number)')
ylabel('values of 1/n and 1/2n')
title ('Bolzano Wiserstrass theorem for convergent of 1/2n')
legend('1/n','1/2n')
