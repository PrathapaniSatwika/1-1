clc
clear all
t=linspace(0,2*pi,100);
r=15;
h=20;
k=25;
x=h+r*cos(t);
y=k+r*sin(t);
plot(x,y,'--b','linewidth',5);
xlabel('x axis')
ylabel('y axis')
title('Circle of given radius (20BCD7160)')
