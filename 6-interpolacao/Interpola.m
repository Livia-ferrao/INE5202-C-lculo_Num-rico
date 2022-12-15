function sistema
format long
clear
clc
%x = [-1 0 1];
%y = [4; 1; -1];
x = [2:0.05:2.15];
y = log(x)
n = length(x);
grau = n-1;

for i = 1:n
  for j = 1:n
    V(i,j) = x(i)^(j-1);
  end
end
a = V\y';
%xx = 0.5;
xx = 2.14;
px=avalia(xx, n, a);  %aprox polinomial
exato = log(xx);      % valor exato

% ------- grafica ------- %
x1 = [x(1):0.05:x(n)];
n1 = length(x1);
for j=1:n1
  p(j)=avalia(x1(j), n, a);
end
p
pause
% ----------------------- %

plot(x,y, '*')
grid
hold on
plot(x1, p, 'r')
hold on
plot(xx, px, 'go')
end

function p=avalia(xx, n, a)
p = 0;
for i=1:n
  p = p + a(i)*xx^(i-1);
end
p;
end
