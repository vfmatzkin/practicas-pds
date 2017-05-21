close all

f_s=2;f_m=10;t_i=0;t_f=1-1/f_m;phi=0;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
stem(t,y);
title("Señal discreta sin interpolar");

f_m_2 = 2 * f_m;
T_m_2 = 1/f_m_2; %Período de la nueva señal

[t_m,y_m] = interpolacion(y,t,T_m_2,@sinc2);
figure();
stem(t_m,y_m);

figure()
subplot(2,1,1);
f1 = fft(y);
%[ft] = fftshift(f1,1/f_m);
stem(abs(f1));

subplot(2,1,2);
f2=fft(y_m);
%[ft1] = fftshift(f2,1/f_m_2);
stem(abs(f2));
