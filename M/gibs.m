% construcci´on de una onda cuadrada mediante series de fourier
% ¿cual es la serie de fourier para una onda cuadrada?


N=1000
x=[0:100]/100;          %vector de 0.1's
f=ones(1,101)*1/2;      % vector de 0.5's
for i = 1:2:N           % desde 1 hasta N de 2 en 2
    a=2/pi/i
    f=f+a*sin(2*pi*i*x);
end
subplot(2,2,1); plot(x,f)

N=50
x=[0:100]/100;          %vector de 0.1's
f=ones(1,101)*1/2;      % vector de 0.5's
for i = 1:2:N           % desde 1 hasta N de 2 en 2
    a=2/pi/i
    f=f+a*sin(2*pi*i*x);
end
subplot(2,2,2); plot(x,f)

N=20
x=[0:100]/100;          %vector de 0.1's
f=ones(1,101)*1/2;      % vector de 0.5's
for i = 1:2:N           % desde 1 hasta N de 2 en 2
    a=2/pi/i
    f=f+a*sin(2*pi*i*x);
end
subplot(2,2,3); plot(x,f)

N=5
x=[0:100]/100;          %vector de 0.1's
f=ones(1,101)*1/2;      % vector de 0.5's
for i = 1:2:N           % desde 1 hasta N de 2 en 2
    a=2/pi/i
    f=f+a*sin(2*pi*i*x);
end
subplot(2,2,4); plot(x,f)