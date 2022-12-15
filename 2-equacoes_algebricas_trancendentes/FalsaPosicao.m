function FalsaPosicao
  clear
  clc
  a=0;
  b=1;
  fa=funcao(a);
  fb=funcao(b);
  x=[a:0.1:b];
  y=funcao(x);
  plot(x,y)
  grid
  hold on
  erro = 10^-7;
  k = 0; %numero de interações
  fxm=1;
  while(abs(fxm)>erro)
    k+=1;
    xm=a-((fa*(b-a))/(fb-fa))
    fxm= funcao(xm)
    r=fa+((fb-fa)/(b-a))*(x-a);
    plot(x,r, 'r')
    %hold on
    pause
    if (fa*fxm<0)
      b=xm;
      fb=fxm;
    else
      a=xm;
      fa=fxm;
    end
  end
  k
  xm %raiz
  fxm %precisao
end

function f=funcao(x)
  f=exp(x).*sin(x)-1;
end



