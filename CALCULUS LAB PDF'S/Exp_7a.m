clc
clear all
syms f1(t) f2(t) s a
f1(t)= 1-t+2*(t^2);
f2(t)= 4*exp(-3*t)-10*sin(2*t);
fprintf('20BCD7160 Prathapani Satwika')
F1 = laplace(f1,t,s)
F2 = laplace(f2,t,s)