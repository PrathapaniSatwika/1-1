clear all
clc
syms y(x) x
A= (x^2)*diff(diff(y))+((x^2)-9)*y == 0;
sol=dsolve(A);
C=1:0.1:20;
for i=0:9
    J=besselj(2,C);
    Y=bessely(2,C);
end
%%plotting the bessel function 
plot(C,J,'Linewidth',2)
grid on
legend('J','Location','Best')
title('Bessel Functions of the first kind')
xlabel('C')
ylabel('2')
plot(C,Y,'Linewidth',2)
grid on
legend('Y','Location','Best')
title('Bessel Functions of the second kind')
xlabel('C')
ylabel('2')
