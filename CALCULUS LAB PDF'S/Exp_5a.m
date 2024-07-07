clc
clear all
syms x y z t
f=x-3*(y^2)+z;
var=[x,y,z];
Par=[t,t,t];
F=subs(f,var,Par);
dr=[diff(Par(1),t),diff(Par(2),t),diff(Par(3),t)];
modr=norm(dr);
I = int(F*modr,t,0,1);
fprintf('20BCD7160 Prathapani Satwika \n')
disp('Line integral along the given curve is')
disp(I)