function Secante
  clear
  clc
  erro=10^-7;
  k=0; %numero iterações
  x0= 0;
  x1= 2;
  fx0 = funcao(x0);
  fx1 = funcao(x1);
  while (abs(fx1)>erro)
    k+=1;
    xk = x1-((fx1*(x1-x0))/(fx1-fx0));
    x0 = x1;
    x1 = xk;
    fx0 = fx1;
    fx1 = funcao(x1);
  end
  k
  xk
  fx1
end

function f=funcao(x)
  f=exp(x)-2*cos(x);
end
function f1=derivada(x)
  f1=exp(x)+2*sin(x);
end

