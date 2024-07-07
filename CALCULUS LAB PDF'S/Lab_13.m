clc
x=0:1:20;
p=sqrt(5);
n=p;
I=besseli(n,x);
K=besselk(n,x);
ylabel('Bessel Functions');
xlabel('')
legend('Ip(x)','Kp(x)')
