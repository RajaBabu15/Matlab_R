clc;
clear all;
close all;
syms f(x);
f=x^3-6*x^2+11*x-6;
x0=input('x0');
e=0.001;
N=1000;
X=zeros(N+1);
Y=zeros(N+1);
X(1)=0;
Y(1)=0;
h=0.01;
for i=1:N
    f_dash = vpa(subs(f,x,(x0+h))-subs(f,x,x0))/h;
    disp([x0,f_dash]);
    if f_dash == 1
        f=1;
        break
    end
    X(i+1)=x0;
    Y(i+1)=vpa(subs(f,x,x0));
    x0=vpa(x0-subs(f,x,x0)/f_dash);
    if abs(vpa(subs(f,x,x0))) <e
        f=1;
        break
    end
end
if f==0
    disp("Cannot Find");
else
    fprintf("The root is %4.2f",x0);
end
