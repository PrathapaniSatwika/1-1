clc
clear all
syms A B t m
p = input('Enter the coefficients of a,b,c = ')
f = input('Enter the RHS function f(t) = ')
a = p(1);
b = p(2);
c = p(3);
disc = b^2-4*a*c;
m = subs(solve(a*m^2+b*m+c));
if(disc>0)
    CF=A*exp(m(1)*t)+B*exp(m(2)*t);
    u = exp(m(1)*t);
    v = exp(m(2)*t);
elseif(disc==0)
    CF = (A+B*t)*exp(m(1)*t);
    u = exp(m(1)*t);
    v = exp(m(1)*t);
else
    alfa=real(m(1));
    beta=imag(m(1));
    CF=exp(alfa*t)*(A*cos(beta*t)+B*sin(beta*t));
    u=exp(alfa*t)*cos(beta*t);
    v=exp(alfa*t)*sin(beta*t);
end
f1=f/a;
Wronsikian=u*diff(v,t)-diff(u,t)*v;
P=int(-v*f1/Wronsikian,t);
Q=int(u*f1/Wronsikian,t);
PI=P*u+Q*v;
y_gen=CF+PI;
dy_gen=diff(y_gen);
cond=input('Enter the initial conditions t_0, y(t_0) and Dy(t_0)_= ');
eq1=(subs(y_gen,t,cond(1)-cond(2)));
eq2=(subs(dy_gen,t,cond(1)-cond(3)));
[A, B]=solve(eq1,eq2);
Y=subs(CF+PI)
fplot(t,Y)