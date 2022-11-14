clc;
clear all;
close all;
T=[0 5 10 20 30 40];
mu=[1.787 1.519 1.307 1.002 0.7975 0.6529];
plot(T,mu);
disp(interp1(T,mu,7.5,'cubic'));