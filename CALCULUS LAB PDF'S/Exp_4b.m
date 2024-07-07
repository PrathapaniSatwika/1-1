clc 
clear all
syms x y z
f=x*cos(y*z);
vars=[x, y, z];
P=[-1,2,1];
u=[2,1,3];
norm(u);
unitu =u./norm(u);
fprintf('20BCD7160 Prathapani Satwika')
grad = gradient(f, vars)
gradval=subs(grad, vars, P);
DirDer = double(dot(gradval,unitu))