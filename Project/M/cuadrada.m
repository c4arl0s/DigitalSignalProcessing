% construcci´on de una onda cuadrada mediante series de fourier
% ¿cual es la serie de fourier para una onda cuadrada?
w=2*pi*1;
N=1000    
x=[0:100]/100;            %vector de 0.1's
f=(ones(1,101)/100);      % vector de 0.5's; por lo que veo da 
                          %un valor medio a la señal
for n = 1:1:N             % desde 1 hasta N de 2 en 2
    a=4/((2*n-1)*pi);
    f=f+a*sin((2*n-1)*w*x); % f es un vector, x es una vector, 
                            % saco el seno de cada elemento x, f + sin.. 
                            % es un vector
end
subplot(2,2,1); plot(x,f)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
w=2*pi*1;
N=25    
x=[0:100]/100;            %vector de 0.1's
f=(ones(1,101)/100);      % vector de 0.5's; por lo que veo da 
                          %un valor medio a la señal
for n = 1:1:N             % desde 1 hasta N de 2 en 2
    a=4/((2*n-1)*pi);
    f=f+a*sin((2*n-1)*w*x); % f es un vector, x es una vector, 
                            % saco el seno de cada elemento x, f + sin.. 
                            % es un vector
end
subplot(2,2,2); plot(x,f)
%%%%%%%%%%%%%%%%%%%%%%%
w=2*pi*1;
N=7    
x=[0:100]/100;            %vector de 0.1's
f=(ones(1,101)/100);      % vector de 0.5's; por lo que veo da 
                          %un valor medio a la señal
for n = 1:1:N             % desde 1 hasta N de 2 en 2
    a=4/((2*n-1)*pi);
    f=f+a*sin((2*n-1)*w*x); % f es un vector, x es una vector, 
                            % saco el seno de cada elemento x, f + sin.. 
                            % es un vector
end
subplot(2,2,3); plot(x,f)
%%%%%%%%%%%%%%%

w=2*pi*1;
N=3    
x=[0:100]/100;            %vector de 0.1's
f=(ones(1,101)/100);      % vector de 0.5's; por lo que veo da 
                          %un valor medio a la señal
for n = 1:1:N             % desde 1 hasta N de 2 en 2
    a=4/((2*n-1)*pi);
    f=f+a*sin((2*n-1)*w*x); % f es un vector, x es una vector, 
                            % saco el seno de cada elemento x, f + sin.. 
                            % es un vector
end
subplot(2,2,4); plot(x,f)

