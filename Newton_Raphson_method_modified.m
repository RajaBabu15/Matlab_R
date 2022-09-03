clc;
clear all;
close all;
syms x;
f=cos(5*x);
g=diff(f);
disp('For given fuction : ');
disp(f);
x0 = input('Enter the intial value approximation for given function : ');
e= input('Enter the tolerable limit/error in function output : ');
for i=1:100;   
    f_dash_x0=subs(g,x,x0);
    f_x0=subs(f,x,x0);
    if f_dash_x0==0
        displ('Mathematical Error')
        return
    end
    x0=x0-f_x0/f_dash_x0;
    if abs(x0) > e
        break
    end
end
X=linspace(x0-10,x0+10);
Y=subs(f,x,X);
figure;
plot(X,Y,x0,0,'r--*');
fprintf('Root of the given function is : %f found in %d iterations.\n',x0,i);