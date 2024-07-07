clc
clear all
syms t s Y y(t) Dy(t)
Df=diff(y(t),t,1);
DDf=diff(y(t),t,2);
Eqn=DDf+2*Df==8*t;
LEQN=laplace(Eqn,t,s);
LT_Y=subs(LEQN,laplace(y,t,s),Y);
LT_Y=subs(LT_Y, y(0), 1);
LT_Y=subs(LT_Y, subs(diff(y(t), t), t, 0), 0);
ys=solve(LT_Y,Y);
fprintf('20BCD7160 Prathapani Satwika');
y=ilaplace(ys,s,t)