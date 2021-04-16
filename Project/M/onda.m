
w=2*pi*1;
N=100    
t=[0:2000]/100;            %vector de 0.1's
f=(ones(1,2001)/100);      % vector de 0.5's; por lo que veo da 
                          %un valor medio a la señal
for n = 1:1:N             % desde 1 hasta N de 2 en 2
    a=4*(-1)^n/(n*n);
    f=f+a*cos(n*t); % f es un vector, x es una vector, 
                            % saco el seno de cada elemento x, f + sin.. 
                            % es un vector
end
% subplot(2,2,1); 
plot(t,f)


