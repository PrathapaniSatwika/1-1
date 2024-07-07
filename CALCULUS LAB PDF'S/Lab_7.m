clc
clear all
A = [ 0 1 0 0;
      0 0 1 1;
      1 0 0 0;
      1 1 1 0];
[V,D]=eig(A);
evals = diag(D);
eval1 = evals(1);
alpha = 1/eval1;
r=V(:,1);
r=r/sum(r)
xO=[2,2,2,1];
x=xO(:)
for iii=1:2
 x=A*x;
end
x=x/sum(x);
disp([r.';x.'])
[max_v , i]=max(r);
[min_v , j]=min(r);
fprintf('The web page no %d has highest priority in search\n',i);
fprintf('The web page no %d has least priority in search\n',j);