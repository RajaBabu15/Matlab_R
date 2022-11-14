%A
f = 1:2:19;
disp(f);

s = 1:100;
disp(s);

t=[1 2 3 4; 1 4 8 4; 9 5 4 3; 4 7 3 2];
ti=inv(t);
disp(t);
disp(ti);

fo=[5 7 8 3; 3 7 0 4; 6 7 8 4; 2 4 7 8];
m=mtimes(t,fo);
disp(fo);
disp(det(m));
disp(m);

%B

z = 1:99;
ave = calculateAverage(z);
disp(ave)


x=(0:0.1:0.9);
disp(2.*x+3);
disp(x.*x+2./x+1);


function ave = calculateAverage(x)
    ave = sum(x(:))/numel(x); 
end



