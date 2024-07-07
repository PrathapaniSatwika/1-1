clc
clear all
syms Q(t)
ode=diff(Q,t,1)+100*Q==10;
cond1 = Q(0) == 0 
fprintf('20BCD7160 Prathapani Satwika')
Qsol(t)=dsolve(ode,cond1)
current=diff(QSol(t))