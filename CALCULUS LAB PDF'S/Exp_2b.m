clc
clear all
syms x y L;
f=(x^2)*y;
diff_f=gradient(f, [x, y]);
fx=diff_f(1);
fy=diff_f(2);
g=(x^2+4*x*y)-67;
diff_g=L*gradient(g, [x, y]);
gx=diff_g(1);
gy=diff_g(2);
eqns=[fx-gx==0,fy-gy==0,g==0];
vars=[x y L]
[sol_x, sol_y, sol_L] = solve(eqns, vars);
xyL_Values= [sol_x(:), sol_y(:), sol_L(:)]
[m,n]=size(xyL_Values);
for i=1:m
    result(i)=subs(f,[x,y,L],xyL_Values(i,:))
end
result;
f_min=min(result);
ind_fmin=find(result==f_min);
f_max=max(result)
ind_fmax=find(result==f_max);
mvar=xyL_Values(ind_fmax,:)