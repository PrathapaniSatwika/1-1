clc
A=[2 -2 1;-1 3 -1;-2 -4 3]
[V,D]=eig(A)
syms x1(t) x2(t) x3(t)
x=[x1;x2;x3]
C=[0;0;0]
ODE=diff(x)==A*x+C
[x1sol(t),x2sol(t),x3sol(t)]=dsolve(ODE);
x2sol(t)=simplify(x2sol(t))
x1sol(t)=simplify(x1sol(t))
x3sol(t)=simplify(x3sol(t))
condition1=x1(0)==1
condition2=x2(0)==0
condition3=x3(0)==0
cond=[condition1 condition2 condition3]
[x1sol(t),x2sol(t),x3sol(t)]=dsolve(ODE,cond)
