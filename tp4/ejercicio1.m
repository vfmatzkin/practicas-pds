close all
%1.1

f_s = 10; f_m = 50; t_m = 1/f_m; t_i = 0; t_f = 1-t_m; phi = 0;
[~,y1] = senoidal1(f_s,f_m,t_i,t_f,phi);
f_s = 20;
[~,y2] = senoidal1(f_s,f_m,t_i,t_f,phi);

s1 = y1 + 4*y2;

f1 = fft(s1);
subplot(2,2,1);
[x,nf1] = acomodarfft(f1,t_m);
stem(x,nf1);
title("TDF de sin(2pi*10t)+4sin(2pi*20t)");

%1.2

n1 = (norm(s1,2))^2;
n2 = 1/length(nf1) * (norm(nf1,2))^2;
mostrar(cstrcat("Energia de la señal: ",num2str(n1)));
mostrar(cstrcat("Energia de TDF: ",num2str(n2)));

%1.2.1

f11 = y1 + 4*y2 + 4;
f2 = fft(f11);
subplot(2,2,3);
[x,nf2] = acomodarfft(f2,t_m);
stem(x,nf2);
title("TDF de sin(2pi*10t)+4sin(2pi*20t)+4");

%1.2.2
f_s = 11;
[~,y3] = senoidal1(f_s,f_m,t_i,t_f,phi);
f122 = y1 + 4*y3 + 4;
f3 = fft(f122);
subplot(2,2,2);
[x,nf3] = acomodarfft(f3,t_m);
stem(x,nf3);
title("TDF de sin(2pi*10t)+4sin(2pi*11t)");

%1.2.3
f_s = 10.5;
[~,y4] = senoidal1(f_s,f_m,t_i,t_f,phi);
f123 = y1 + 4*y4 + 4;
f4 = fft(f122);
subplot(2,2,4);
[x,nf4] = acomodarfft(f4,t_m);
stem(x,nf4);
title("TDF de sin(2pi*10t)+4sin(2pi*10.5t)");


