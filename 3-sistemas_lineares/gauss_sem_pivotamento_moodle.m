clear
clc
a = [-0.421 0.784 0.279; 0.448 0.832 .0193; 0.421 0.784 -0.207];
b = [0 1 0];
ca = a
cb = b
n = length(b);
for k=1:n-1
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



