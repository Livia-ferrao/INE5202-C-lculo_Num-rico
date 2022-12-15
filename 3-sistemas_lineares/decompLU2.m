clc
clear
a=[4 2 3;2 -4 -1;-1 1 4];
ca = a;
b=[7 1 -5];
ca=a;
cb=b;
n = length(b);
for k = 1:n
  for i = k:n
    soma = 0;
    for t = 1:k-1
      soma = soma + a(i,t)*a(t,k);
    end
    a(i,k) = a(i,k)-soma;
  end

    for j=k+1:n
      soma = 0;
      for t=1:k-1
        soma = soma + a(k,t)*a(t,j);
      end
      a(k,j) = (a(k,j)-soma)/a(k,k);
    end
end
a

%-- substituicao direta Ly --
y(1) = b(1)/a(1,1);
for i=2:n
  soma=0;
  for j=1:i-1
    soma = soma + a(i,j)*y(j);
  end
    y(i) = (b(i) - soma)/a(i,i);
end

%-- retrosubstituiçao Ux=y --
x(n) = y(n);
for i=n-1:-1:1
  soma=0;
  for j=i+1:n
    soma = soma + a(i,j)*x(j);
  end
  x(i)=(y(i)-soma);
end
x

%-- residuo --
r = abs(b'-ca*x')











