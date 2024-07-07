clc
clear all
syms x1(t) x2(t) x3(t)
A=[2 -2 1;-1 3 -1;-2 -4 3]
B=[0;3;3*t]
Dx1=diff(x1);
Dx2=diff(x2);
Dx3=diff(x3);
[P ,lambda] = eig(A);
P=round(P,5)
fprintf('The Eigen Values of A is %f \n',eig(A));
disp('The Modal Matrix is: ');
disp(P);
if (rank(P)~=length(P))
return
end
D = inv(P)*A*P;
D=round(D,5)
X=[x1(t);x2(t);x3(t)];
for i=1:length(A)
eqs=diff(X(i),t) - D(i)*X(i)-D(i)*B(i) == 0
sol(i)=dsolve(eqs)
end
Y = P*sol' %[Sol1; Sol2; Sol3]
