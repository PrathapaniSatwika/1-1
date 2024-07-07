%system of linear equations2(2)
clc
clear 
A=[1 -1 -1 ; 1 3 0; 0 3 -2];
B=[0;9;6];
rank(A)
X=pinv(A)*B