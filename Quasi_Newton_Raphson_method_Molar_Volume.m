clc;
clear all;
close all;
syms x;
R=8.314;
p=4000000;
T=364;
a=vpa((27*(R*T)^2)/(64*p));
b=vpa((R*T)/(8*p));
n=227400/44.1;
f=x^3-vpa((p*n*b+n*R*T)/(p))*x^2+vpa((a*n^2)/p)*x-a*b*n^3/p;
g=diff(f);
disp('For given fuction : ');
disp(f);
x0 = input('Enter the intial value approximation for given function : ');
e= input('Enter the tolerable limit/error in function output : ');
for i=1:100
    f_dash_x0=0;
    for j=1:1000
        tmp=j*(vpa(subs(f,x,vpa(x0+1/j)))-vpa(subs(f,x,x0)));
        if tmp-f_dash_x0 <e 
            f_dash_x0=tmp;
            break;
        end
            f_dash_x0=tmp;
    end
    f_x0=subs(f,x,x0);
    if f_dash_x0==0
        error('Mathematical Error');
    end
    x0=x0-f_x0/f_dash_x0;
    if abs(subs(f,x,x0)) < e
        break;
    end
end
X=linspace(x0-10,x0+10);
Y=subs(f,x,X);
figure;
plot(X,Y);
hold on;
plot([1 1]*x0, ylim, '-r')  
plot(xlim,[1 1]*0, '-r')  
plot (x0,0, 'r.', 'MarkerSize', 20);
hold off;
fprintf('Root of the given function is : %f found in %d iterations.\n',x0,i);