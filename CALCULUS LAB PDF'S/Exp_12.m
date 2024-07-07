% Circle equation: (x-h)^2 + (y-k)^2 = r^2
% Center: (h,k)   Radius: r
h = 0;
k = 0;
r = 60;

xmin = h - r;
xmax = h + r;
x_res = 1e-3;
X = xmin:x_res:xmax;

N = length(X);
x = [X flip(X)];

ytemp1 = zeros(1,N);
ytemp2 = zeros(1,N);
for i = 1:1:N
    square = sqrt(r^2 - X(i)^2 + 2*X(i)*h - h^2);
    ytemp1(i) = k - square;
    ytemp2(N+1-i) = k + square;
end
y = [ytemp1 ytemp2];

c = 1.5;
figure(1)
plot(x,y)
axis([h-c*r h+c*r k-c*r k+c*r]);
title('20BCD7160 Prathapani Satwika')