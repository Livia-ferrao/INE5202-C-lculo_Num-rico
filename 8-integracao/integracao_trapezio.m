clc
clear
a = 0;
b = 1;
n = 10;
h = (b-a)/n;
x = [a:h:b];
y = exp(x);
exata = exp(1)-1

soma = 0;
for i=2:n
  soma = soma + y(i);
end
T = (h/2) * (y(i)+2*soma+y(n+1))

soma1 = 0;
soma2 = 0;
for i=1:(n/2)-1
  soma1 = soma1 + y(2*i);
  soma2 += y(2*i+1);
end
soma1 += y(n);
S = (h/3)*(y(1)+4*soma1+2*soma2+y(n+1))

