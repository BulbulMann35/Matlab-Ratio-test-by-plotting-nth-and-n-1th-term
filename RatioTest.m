%Ratio test by plotting nth and n+1 th term
%Test the convergence of (factorial(2*n) / factoial(n) *factorial(n) 
clear all
clc
for n=1:20
    x(n) =n;
    y(n) = factorial(2*n) / (factorial(n) *factorial(n)) ;
end 
for i= 1:19
    X(i) = x(i) ;
    r(i) = y(i+1) /y(i) ;
    fprintf('\n r(%d) = %f ' , i, r(i)) ;
end 
fprintf ('\n');
plot(X, r)
