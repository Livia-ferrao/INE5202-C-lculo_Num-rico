function Newton
  clear
  clc
  a=0;
  b=1; %[a,b] para o gráfico
  erro=10^-7;
  k=0; %numero iterações
  x0=1; %estimativa inicial
  fx=funcao(x0);
  dfx=derivada(x0);
  while (abs(fx)>erro)
    k+=1;
    r=dx*(x-x0)+fx;
    plot(x, r, 'r')
    hold on
    xk = x0-fx/dfx; %aprox raiz
    x0=xk;
    fx=funcao(x0);
    dfx=derivada(x0);
    %pause
  end
  k
  xk
  fx
end

function f=funcao(x)
  f=exp(x)*sin(x)-1;
end
function f1=derivada(x)
  f1=exp(x)*sin(x)+exp(x)*cos(x);
end

