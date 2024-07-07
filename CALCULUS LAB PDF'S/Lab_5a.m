%system of linear equations2(1)
clc
clear
A=[1 -1 1;-1 1 -1; 2 1 0; 0 2 5];
B=[0;0;8;18];
rank(A)
X=pinv(A)*B

