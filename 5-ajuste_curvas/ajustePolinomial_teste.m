clear
clc
x = [0 20 40 60 80 100];
y = [81.4 77.7 74.2 72.4 70.3 68.8];

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

