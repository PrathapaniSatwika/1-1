clc
clear all
syms x
p=input('Enter the period:');
l=p/2;
X=input('Enter the X-vector:');
Y=input('Enter the Y-vector:');
N=length(X);
r=input('Enter the number of terms in series:');
a_0=(2/N)*sum(Y);
for n=1:r
a(n)=(2/N)*sum(Y.*cos(n*pi*X/l));
b(n)=(2/N)*sum(Y.*sin(n*pi*X/l));
end
for n=1:r
H(n)=a(n)*cos(n*pi*x/l)+b(n)*sin(n*pi*x/l);
end
HS=(a_0)/2+sum(H);
disp('Harmonic series is given by')
disp(HS)
hold on
plot(X,Y,'*r')
fplot(HS,[0,p])

