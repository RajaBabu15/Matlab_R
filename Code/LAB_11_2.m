clc;
clear all;
close all;
syms c1(t) c2(t) c3(t) c4(t) c5(t);
ode1 = diff(c1) == 1/50*(5*0.1+1*c3-6*c1);
ode2 = diff(c2) == 1/20*(3*c1-3*c2);
ode3 = diff(c3) == 1/40*(8*0.2+c2-9*c3);
ode4 = diff(c4) == 1/80*(c2+8*c3+2*c5-11*c4);
ode5 = diff(c5) == 1/100*(3*c1+c2-4*c5);
odes = [ode1; ode2; ode3; ode4; ode5];
cond1 = c1(0) == 0;
cond2 = c2(0) == 0;
cond3 = c3(0) == 0;
cond4 = c4(0) == 0;
cond5 = c5(0) == 0;
conds = [cond1; cond2; cond3; cond4; cond5];
[c1Sol(t),c2Sol(t),c3Sol(t),c4Sol(t),c5Sol(t)] = dsolve(odes,conds);
fig = fplot(c1Sol)
hold on
fig = fplot(c2Sol)
grid on
fig = fplot(c2Sol)
grid on
fig = fplot(c3Sol)
grid on
fig = fplot(c4Sol)
grid on
fig = fplot(c5Sol)
grid on
legend('c1Sol','c2Sol','c3Sol','c4Sol','c5Sol','Location','best');
saveas(fig ,'fig.jpg')
disp(c1Sol);
disp(c2Sol);
disp(c3Sol);
disp(c4Sol);
disp(c5Sol);
