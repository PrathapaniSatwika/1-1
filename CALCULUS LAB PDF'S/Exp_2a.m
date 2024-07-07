%clc
%clear all
syms x
f=x*(71-2*x)*(74-2*x);
df=diff(f);
roots = solve(df==0);
ddf=diff(df);
ddfval=subs(ddf, x, roots);
for i=1:length(ddfval)
    if ddfval(i)<0
        fprintf('f is maximum')
        xmaxvalue=double(roots(i))
        fmax=subs(f, x, roots(i))
        maxvolume=double(fmax)
    else
        fprintf('f is minimum')
        xminvalue=double(roots(i))
        fmin=subs(f, x, roots(i))
        minvolume=double(fmin)
    end
end