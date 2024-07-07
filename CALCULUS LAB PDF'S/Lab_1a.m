clc
clear all  
p='WORD'
c=double(p);
c=reshape(c,2,2);
c=c-65;
k=[1 3;0 1];
d=k*c;
d=mod(d,26);
d=d+65;
d=reshape(d,1,4);
d=char(d)

r=inv(k);
x=double(d);
x=reshape(x,2,2);
x=x-65;
e=r*x;
e=mod(e,26);
e=e+65;
e=reshape(e,1,4);
e=char(e)
