clc
clear all
syms x(t)
ode=diff(x,t,2) + 8*diff(x,t,1) + 10*x == 48*sin(10*t);
m = diff(x,t,1);
cond1 = x(0)==0;
cond2 = m(0)==0;
Array = [cond1, cond2];
fprintf('20BCD7160 Prathapani Satwika')
position(t) = dsolve(ode,Array)