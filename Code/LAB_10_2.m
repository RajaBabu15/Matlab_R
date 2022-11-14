clc;
clear all;
close all;
syms t h;
f = -0.06*sqrt(h);
h0=3;
t0=0;
s=0.0001;
i=0;
while 1
    h0=vpa(h0+s*subs(subs(f,t,t0+i*s),h,h0));
    i=i+1;
    if t0+i*s==3
        break;
    end
end
disp(vpa(h0));