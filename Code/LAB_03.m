clc;
clear all;
close all;
syms x;
f=x^3-6*x^2+11*x-6;
g = diff(f);
x0=input('x0');
e=0.001;
N=1000;
X=zeros(N+1);
Y=zeros(N+1);
X(1)=0;
Y(1)=0;
for i=1:N
    if vpa(subs(g,x,x0)) == 0
        f=0;
        break
    end
    X(i+1)=x0;
    Y(i+1)=vpa(subs(f,x,x0));
    hold on;
    x0=vpa(x0-subs(f,x,x0)/subs(g,x,x0));
    
    if abs(vpa(subs(f,x,x0))) <e
        break
    end
end
if f==0
    disp("Cannot Find");
else
    fprintf("The root is %4.2f",x0);
    plot(X,Y)
end
