close all

f_s = 10; f_m = 100; t_m = 1/f_m; t_i = 0; t_f = 1-t_m; phi = 0;
[~,y1] = senoidal1(f_s,f_m,t_i,t_f,phi);
t = t_i:t_m:t_f;

f1 = fft(y1);

stem(f1);
title("TDF de y1");

retardo = 8;
n = length(f1);
for k=1:n
	f2(k) = f1(k) * exp(-j*2*pi*retardo*(k-1)/n);
end

y2 = ifft(f2);
figure();
subplot(2,1,1);
stem(t,y1);
subplot(2,1,2);
stem(t,(y2));
