clc;
clear all;
close all;

c = [0.5 0.8 1.5 2.5 4.0];
k = [1.1 2.4 5.3 7.6 8.9];
x = (c.^2)./k;
y = c.^2;
p=polyfit(x,y,1);
a=-1*p(1);
b=p(2);

cf = [1 2 3];
kf = polyval(p,(b.*(cf.^2))./(a+(cf.^2)));
disp(kf);