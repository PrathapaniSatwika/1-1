
clc; 
syms x  n pi
% pi=3.14; 
sum=0;  
y=x;   %function you want 
a0=(1/pi)*int(y,x,-pi,pi); 
 for n=1:4
        %finding the coefficients 
    an=(1/pi)*int(y*cos(n*x),x,-pi,pi); 
    bn=(1/pi)*int(y*sin(n*x),x,-pi,pi);    
    sum=a0/2+(an*cos(n*x)+bn*sin(n*x)); 
 end 
fplot(x,y,[-pi,pi])
grid on;hold on;  
fplot(x,(sum+a0/2),[-pi,pi])
syms x pi
F =(1/pi) * int(x^2+5*x,'Hold',true);
bn=(1/pi)*int(y*sin(n*x),x,-pi,pi); G = bn;
Gcalc = release(G);
Fcalc = int(bn);
clc; 
syms x  pi n
% pi=3.14; 
    bn=(1/pi)*int(y*sin(n*x),x,-pi,pi);     
    sum=sum+(an*cos(n*x)+bn*sin(n*x));   
 % end 
fplot(x,y,[-3.14,3.14]); 
sum=0;  
y= x - (x^2) ;   %function you want 
a0=(1/pi)*int(y,x,-pi,pi);  
% for n=1:3 
        %finding the coefficients 
    an=(1/pi)*int(y*cos(n*x),x,-pi,pi);  
grid on;hold on;  
fplot(x,(sum+a0/2),[-3.14,3.14]) 