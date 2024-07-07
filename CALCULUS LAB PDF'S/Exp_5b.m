clc
clear all
syms t
x = t^2;
y = t;
z = sqrt(t);
f=[z,x*y, -(y^2)];
r = [x,y,z];
dr = [diff(r(1),t),diff(r(2),t),diff(r(3),t)];
F =  dot(f,dr);
I = int(F,t,0,1);
fprintf('20BCD7160 Prathapani Satwika\n');
disp('Line integral along the given curve is')
disp(I)