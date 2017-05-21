%La señal que se observa posee una frecuencia de muestreo de 129Hz (es dato)
%La señal de la figura parece ser de 1Hz, aunque esto no es así realmente ya que
%la frecuencia es mucho mayor. Lo que en realidad ocurre es que al ser una unda tan densa
%y muestrear justo en esa frecuencia (que según el teorema del muestreo no va a representar a la
%onda original), justo queda muestreado como si fuera una onda de 1Hz. Al muestrear a 8000Hz o más se 
%ve la verdadera forma de la señal.

%f_s: Frecuencia de la señal
%f_m: Frecuencia de muestreo
%t_i, t_f: Tiempos inicial y final
%phi: Angulo de fase
close all

f_s=4000;f_m=129;t_i=0;t_f=2;phi=0;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
stem(t,y);
