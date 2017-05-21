%Se corresponde con la sinusoidal de 5Hz cuando la frecuencia de muestreo es al menos el doble de la frecuencia de la señal (Teorema del Muestreo). Pero visualmente, las que más se parecen son las primeras. Las discrepancias encontradas se deben a que el muestreo se realiza en múltiplos o no de la señal original, lo cual hace que se noten patrones que están relacionados con la señal original pero a simple vista parecería que no.

%f_s: Frecuencia de la señal
%f_m: Frecuencia de muestreo
%t_i, t_f: Tiempos inicial y final
%phi: Angulo de fase
%(se puede reemplazar las llamadas a stem(t,y) por plot(t,y))
close all

f_s=5;f_m=100;t_i=0;t_f=1;phi=0;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
subplot(2,3,1);
stem(t,y);

f_m=25;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
subplot(2,3,2);
stem(t,y);

f_m=10;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
subplot(2,3,3);
stem(t,y);

f_m=4;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
subplot(2,3,4);
stem(t,y);

f_m=1;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
subplot(2,3,5);
stem(t,y);

f_m=.5;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
subplot(2,3,6);
stem(t,y);
