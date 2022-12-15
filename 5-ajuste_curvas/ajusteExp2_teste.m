clear
clc
x = [0 0.2 0.5 0.6 0.8 1.1];
y = [0.06 0.12 0.3 0.6 0.73 0.74];
z = log(y) %ln(y)
n = length(x); %numero de pontos
M = 1;  # sempre 1 - exponencial

for i = 1:M+1
  for j = 1:M+1
    a(i,j) = 0;
    for k =1:n
      a(i,j) += x(k)^(i+j-2);
    end
  end
  b(i) = 0;
  for k = 1:n
    b(i) += z(k)*x(k)^(i-1);
  endfor
end

a
b
c = a\b'  #resolve o sistema linear - metodo direto
c=exp(c);
c

#gera os pontos da curva
for i = 1:n
  g(i) = c(1)*c(2)^x(i);
end
g;
plot(x,y, 'o');
grid
hold on
plot(x,g,'r');

