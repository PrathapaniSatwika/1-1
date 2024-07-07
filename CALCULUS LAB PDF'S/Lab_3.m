clc
clear all
A=[2 -2 1;-1 3 -1;-2 -4 3];
[V,D]=eig(A);
syms c1;
syms c2;
syms c3;
syms t;
e1=D(1,1);
e2=D(2,2);
e3=D(3,3);
x1=V(:,1);
x2=V(:,2);
x3=V(:,3);
x(t)=c1*exp(e1*t)*x1+c2*exp(e2*t)*x2+c3*exp(e3*t)*x3;
y=simplify(c1*x1+c2*x2+c3*x3)==[1;0;0];
[E,F] = equationsToMatrix([y(1), y(2), y(3)], [c1, c2, c3]);
J=E\F;