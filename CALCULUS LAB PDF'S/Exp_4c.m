clc
clear all
syms x y
f1 = inline((x^2)*y,'x','y');
f2 = inline(x*y,'x','y');
x = linspace(-1, 1, 10);
y = x;
[X,Y] = meshgrid(x,y);
U = f1(X,Y);
V = f2(X,Y);
quiver(X,Y,U,V,1)
view(-30,60);
axis on
xlabel('x')
ylabel('y')
title('20BCD7160 Prathapani Satwika')