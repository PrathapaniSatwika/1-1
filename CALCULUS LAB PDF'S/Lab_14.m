clc
clear all
t=0:0.5:20;
p=2;
n=p;
a=-3;
m=t.^((1-a)/2);
J=besselj(n,t);
Y=bessely(n,t);
plot(a.*t,m.*J,a.*t,m.*Y)
ylabel('Bessel Functions');
xlabel('')
legend('Jp(t)','Yp(t)')
