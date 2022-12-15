clear
clc
a=0;
b=1;
fa=exp(a)*sin(a)-1;
fb=exp(b)*sin(b)-1;
erro = 10^-7;
k = 0; %numero de interações
fxm=1;
while(abs(fxm)>erro)
  k+=1;
  xm=(a+b)/2;
  fxm= exp(xm)*sin(xm)-1;
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

