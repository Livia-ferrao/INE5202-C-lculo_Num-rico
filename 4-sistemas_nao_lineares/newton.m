clc
clear

#f1 = e^x1 + x2 - 1 = 0
function y1 = f1(x)
  y1 = exp(x(1)) + x(2) - 1;
endfunction

#f2 = x1^2 + x2^2 - 4 = 0
function y2 = f2(x)
  y2 = x(1)^2 + x(2)^2 - 4;
endfunction

x = [1; -1];

erro = 10 ^ (-8); conta_ciclos = 0;
d = 1;

while (d > erro)
  conta_ciclos++;
  
  J(1,1) = exp(x(1));
  J(1,2) = 1;
  J(2,1) = 2*x(1);
  J(2,2) = 2*x(2);
  
  F(1) = f1(x);
  F(2) = f2(x);
  F
  d = J\-F'
  
  x = x + d
  
  d = max(abs(d));

endwhile;
x
conta_ciclos
d