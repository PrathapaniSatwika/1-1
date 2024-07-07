clc
clear all
syms x y z
f=x*y*z;
F=[(x^2)*y,y,y*z];
vars=[x, y, z];
fprintf('20BCD7160 Prathapani Satwika')
grad=gradient(f, vars)
divf=divergence(F, vars)
curlf=curl(F, vars)
