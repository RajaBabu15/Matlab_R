clc;
clear all;
close all;
syms x y;
f = y-x;
x0=0;
y0=0.5;
h=0.05s;
i=0;
X=sym(zeros(1,21));
Y=sym(zeros(1,21));
Y_O=sym(zeros(1,21));
X(1)=x0;
Y(1)=y0;
Y_O=y0;
while 1
    y0=y0+h*subs(subs(f,x,x0+i*h),y,y0);
    i=i+1;
    X(i+1)=x0+i*h;
    Y(i+1)=vpa(y0);
    Y_O(i+1)=vpa(x0+i*h+1-0.5*exp(x0+i*h));
    if x0+i*h==1
        break;
    end
end
disp(vpa(y0));
disp((Y-Y_O)');
plot(X,Y-Y_O);