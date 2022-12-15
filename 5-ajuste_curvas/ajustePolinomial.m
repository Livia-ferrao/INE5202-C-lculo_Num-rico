clear
clc
x = [1.3 3.4 5.1 6.8 8];
y = [2 5.2 3.8 6.1 5.8];

n = length(x); %numero de pontos
M = 1   #grau do ajuste

for i = 1:M+1
  for j = 1:M+1
    a(i,j) = 0;
    for k =1:n
      a(i,j) += x(k)^(i+j-2);
    end
  end
  b(i) = 0;
  for k = 1:n
    b(i) += y(k)*x(k)^(i-1);
  endfor
end

a
b
c = a\b'  #resolve o sistema linear - metodo direto


#gera os pontos da curva
for i = 1:n
  g(i) = 0;
  for j=1:M+1
    g(i) += c(j)*x(i)^(j-1);
  end
end
g
plot(x,y, 'o');
grid
hold on
plot(x,g,'r');

