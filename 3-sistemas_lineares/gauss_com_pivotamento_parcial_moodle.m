clear
clc
a = [1 1 1.5 1 1.5 0 0 0 0 0; 0 1 0.01 0.51 1.5 0.5 0 0 0 0; 2.9 1 2 1 1 0 5 0 0 0; 9 1 0.2 1 1 0 0 1.5 0 0; 1 0 2 0 0 1 1 1 0 2; 0 1 0 0 -2 0 1 -1 1 1; 1 0 2 0 0 0 1 1 1 0; 0 1 0 0 2 0 1 1 1 -1; 0 0 1 0 2 1 -1 0 -1 -1; 0 1 0 0 2 0 1 0 1 1];
b = [4 -3 1 -1 -1 0 -1 1 3 -2];
ca = a;
cb = b;
n = length(b);
% ----- PROCURANDO MAIOR EM MODULO -----
for k=1:n-1  %linha pivo e coef pivo
  maior = abs(a(k,k));
  p = k;
  for i=k+1:n
    if (abs(a(i,k)) > maior)
      maior = abs(a(i,k));
      p = i; %linha do maior em modulo
    end
  end
% ----- TROCANDO LINHAS FISICAMENTE------
  if (p>k)
    %a(k,:) = a(p,:);
    for j=k:n  %percorrer colunas
      aux = a(k,j);
      a(k,j) = a(p,j);
      a(p,j) = aux;
    end
    aux = b(k);
    b(k) = b(p);
    b(p) = aux;
  end

% ---- TRIANGULARIZACAO -----
  for i=k+1:n
    mult = a(i,k)/a(k,k);
    for j=k:n
      a(i,j)=a(i,j)-mult*a(k,j);
    end
    b(i)=b(i)-mult*b(k);
  end
end
a
b

% ----- RETROSUBSTITUIÇÃO ------
x(n)=b(n)/a(n,n);
for i=n-1:-1:1
  soma=0;
  for j=i+1:n
    soma=soma+a(i,j)*x(j);
  end
  x(i)=(b(i)-soma)/a(i,i);
end
x
% ---- RESIDUO -----
r = abs(cb'-ca*x')

