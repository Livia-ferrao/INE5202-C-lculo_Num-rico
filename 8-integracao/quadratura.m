clc
clear

a = 0;
b = 1;
x = ((b-a)/2)*t+(b+a)/2;
dx = (b-a)/2;
F = exp(x)*dx;
Q = A*F';
