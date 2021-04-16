% PEINE
L=100;
N=500;
x=sin(2*pi*10*[1:L]/N)+.1*rand(1,L);
h=1/N*ones(1,N);
y=filter(h,1,x);
subplot(2,2,1); plot(x)
subplot(2,2,2); plot(y) 

L1=1000;
N1=5000;
x1=sin(2*pi*10*[1:L1]/N1)+.25*rand(1,L1);
h1=1/N1*ones(1,N1);
y1=filter(h1,1,x1);
subplot(2,2,3); plot(x1)
subplot(2,2,4); plot(y1)
