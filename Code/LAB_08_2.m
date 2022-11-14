clc;
clear all;
close all;
T=[0 5 10 15 20 25 30];
mu=[12.9 11.3 10.1 9.03 8.17 7.46 6.85];
plot(T,mu);
disp(interp1(T,mu,18,'cubic'));