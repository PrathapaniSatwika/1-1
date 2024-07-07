%system of linear equations1
clc
clear 
A=[1 0 0 -1; 1 -1 0 0; 0 -1 1 0; 0 0 1 -1];
B=[160;240;600;520];
det(A)
r=rank(A)
X=pinv(A)*B
if (r==4)
    disp('equations have only a trivial solution:x=y=z=0')
else
    disp('equations have infinite no.of solutions')
end