%Google page rank
clc
clear all
A=input(' Enter the transition matrix : ');
%A=[0 1/2 0 0;0 0 1/2 1;1/2 0 0 0;1/2 1/2 1/2 0] %Transition matrix
d=0.85; %Transition probability
n=length(A);
B=d*A+(1-d)/n ; %Transition probability Matrix
p=null(B-1*eye(n)) % Egen vector corresponding to eigen value 1
p=p(:,1)/sum(p(:,1)) %Normalized eigen vector
[max_v , i]=max(p);
[min_v , j]=min(p);
fprintf('The web page no %d has highest priority in search\n',i);
fprintf('The web page no %d has least priority in search',j);