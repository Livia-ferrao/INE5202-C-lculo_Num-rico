function Lagrange_log
  clear
  clc
  x = [2: 0.05: 2.15];
  y = log(x);
  n = length(x);
  xx = 2.14;
  px = Lag(x,y,n,xx)
  exato = log(xx)
  % --------- grafico ---------
  x1 = [x(1):0.01:x(n)];
  n1 = length(x1);  % 11
  for k=1:n1
    p1(k)=Lag(x, y, n, x1(k));
  end
  p1;
  % ----------------------------
  plot(x, y, '*')
  grid
  hold on
  pause
  plot(x1, p1, 'r')
  hold on
  pause
  plot(xx, px, 'go')
end

function p = Lag(x,y,n,xx)
  p = 0;
  for i = 1:n
    num = 1;
    den = 1;
    for j = 1:n
      if (j != i)
        num = num * (xx-x(j));
        den = den * (x(i)-x(j));
      end
    end
    L = num/den;
    p = p + y(i) * L;
  end
end
