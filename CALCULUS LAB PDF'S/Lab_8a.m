clc 
clear all 
syms K L U n x 
f = 1/exp(x)
L = 0
U = 2*pi
l = (U-L)/2;
n = 5 ;
ak = @(f,x,k) (1/l)*int(f*cos(k*pi*x/l),x,L,U);
bk = @(f,x,k) (1/l)*int(f*sin(k*pi*x/l),x,L,U);
fs = @(f,x,n) ak(f,x,0)/2+symsum(ak(f,x,k)*cos(k*pix/l)+bk(f,x,k)*sin(k*pi*x/1),k,l,n)
for i=1:n
 sn=ak(f,x,0)/2+ ak(f,x,i)*cos(i*pi*x/l)+bk(f,x,i)*sin(i*pi*x/1);
 disp(['Harmonics upto:',num2str(i)]); h=fplot(f,[L,U]);
 set(h,'Linewidth',2);
 hold on 
 h = fplot(sn,[L,U]);
 set(h,'Linestyle','-','color',[i/n,1/n,1/n],'Linewidth',2);
 title(['Partial sums upto n=',num2str(i)])
 end
