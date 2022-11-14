clc;
clear all;
close all;
syms t y;
f = -2*y*y - exp(-3*t);
t0=0;
y0=1;
tn=20;
H=[0.1 0.05];
for i = 1:length(H)
    h=H(i);
    n=(tn-t0)/h+1;
    for j=1:1:n
        k1=h*subs(subs(f,t,t0),y,y0);
        k2=h*subs(subs(f,t,t0+h/2),y,y0+k1/2);
        k3=h*subs(subs(f,t,t0+h/2),y,y0+k2/2);
        k4=h*subs(subs(f,t,t0+h),y,y0+k3);
        K=(k1+2*k2+2*k3+k4)/6;
        y0=vpa(y0+K);
        t0=t0+h;
    end
    disp(y0);
end