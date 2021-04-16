%      ***** MATLAB Code Starts Here *****
%

%FOURIER_SERIES_02_MAT

%

fig_size = [232 84 774 624];

T0 = 8;

w0 = 2*pi/8;

t = linspace(-8,16,1001);

a0 = 0.25;

n = 1:50;

an = (1./(pi*n)) .* sin(n*pi/2);

bn = (1./(pi*n)) .* (1 - cos(n*pi/2));

x1 = a0;

for i = 1:10

x1 = x1 + an(i)*cos(i*w0*t) + bn(i)*sin(i*w0*t);

end

x2 = x1;

for i = 11:30

x2 = x2 + an(i)*cos(i*w0*t) + bn(i)*sin(i*w0*t);

end

x3 = x2;

for i = 31:50

x3 = x3 + an(i)*cos(i*w0*t) + bn(i)*sin(i*w0*t);

end

A0 = a0;

An = sqrt(an.^2 + bn.^2);

thn = atan2(-bn,an)*180/pi;

X0 = A0;

Xn = An/2;

figure(1),clf,plot([-8 -6],[1 1],'b-',[-6 -6],[1 0],'b--',[-6 0],[0 0],'b-',[0 2],[1 1],'b-',[2 8],[0 0],'b-',...

[8 10],[1 1],'b-',[10 16],[0 0],'b-',[0 0],[0 1],'b--',[2 2],[1 0],'b--',[8 8],[0 1],'b--',...

[10 10],[1 0],'b--',[16 16],[0 1],'b--'),...

axis([-8 16 -.5 1.5]),plotax,xlabel('Time (s)'),ylabel('Amplitude'),title('Periodic Pulse Train x(t)'),...

set(gcf,'Position',fig_size),text(5,-0.2,'T_0 = 8 s'),text(5,-0.3,'Pulse width = T_0/4')

figure(2),clf,subplot(311),plot(t,x1),subplot(312),plot(t,x2),subplot(313),plot(t,x3),...

subplot(311),ylabel('Amplitude'),title('Fourier Series Representation of x(t) with 10 Terms'),...

subplot(312),ylabel('Amplitude'),title('Fourier Series Representation of x(t) with 30 Terms'),...

subplot(313),ylabel('Amplitude'),title('Fourier Series Representation of x(t) with 50 Terms'),xlabel('Time (s)'),...

for i = 1:3,subplot(3,1,i),...

hold on,plot([0 2],[1 1],'r-',[2 8],[0 0],'r-',[8 10],[1 1],'r-',[10 16],[0 0],'r-',...

[0 0],[0 1],'r--',[2 2],[1 0],'r--',[8 8],[0 1],'r--',[10 10],[1 0],'r--',[16 16],[0 1],'r--',...

[-8 -6],[1 1],'r-',[-6 -6],[1 0],'r--',[-6 0],[0 0],'r-'),hold off,...

axis([-8 16 -0.5 1.5]),plotax

end

set(gcf,'Position',fig_size)

figure(3),clf,subplot(211),plot(0,a0,'ro',n,an,'o'),axis([-5 50 -0.2 0.5]),plotax,...

hold on,plot([10.5 10.5],[-0.2 0.5],'r--',[30.5 30.5],[-0.2 0.5],'r--'),hold off,...

xlabel('Harmonic Number'),ylabel('Amplitude'),title('Trig Fourier Series Coefficients a_n for x(t)'),...

subplot(212),plot(n,bn,'o'),axis([-5 50 -0.05 0.35]),plotax,...

hold on,plot([10.5 10.5],[-0.05 0.35],'r--',[30.5 30.5],[-0.05 0.35],'r--'),hold off,...

xlabel('Harmonic Number'),ylabel('Amplitude'),title('Trig Fourier Series Coefficients b_n for x(t)'),...

set(gcf,'Position',fig_size)

figure(4),clf,subplot(211),plot(0,A0,'ro',n*w0,An,'o'),axis([-2*w0 16 -0.1 0.5]),plotax,...

xlabel('Frequency (r/s)'),ylabel('Magnitde'),title('Cosine Fourier Series Magnitudes A_n for x(t)'),...

subplot(212),plot(n*w0,thn,'o'),v=axis;axis([-2*w0 16 -200 10]),plotax,...

xlabel('Frequency (r/s)'),ylabel('Phase (deg)'),title('Cosine Fourier Series Phases Theta_n for x(t)'),...

set(gcf,'Position',fig_size)

figure(5),clf,subplot(211),plot(0,X0,'ro',n*w0,Xn,'o',-n*w0,Xn,'o'),axis([-16 16 -0.1 0.3]),plotax,...

xlabel('Frequency (r/s)'),ylabel('Magnitde'),title('Exponential Fourier Series Magnitudes X_n for x(t)'),...

subplot(212),plot(n*w0,thn,'o',-n*w0,-thn,'o'),v=axis;axis([-16 16 v(3:4)]),plotax,...

xlabel('Frequency (r/s)'),ylabel('Phase (deg)'),title('Exponential Fourier Series Phases Theta_n for x(t)'),...

set(gcf,'Position',fig_size)

clear i v

%
%      ***** MATLAB Code Stops Here *****


