%Análisis: Al ser interpoladores, se cumple que los valores de la señal que ya tengo son los mismos en la señal final, y el resto se calcula a partir de los demás valores, lo cual explica la diferencia entre los métodos. En la función sinc se estableció la frecuencia de la señal en 0.5.

%f_s: Frecuencia de la señal
%f_m: Frecuencia de muestreo
%t_i, t_f: Tiempos inicial y final
%phi: Angulo de fase
close all

f_s=2;f_m=10;t_i=0;t_f=2;phi=0;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
stem(t,y);
title("Señal discreta sin interpolar");

f_m_2 = 4 * f_m; %4 veces la frecuencia de muestreo original
T_m_2 = 1/f_m_2; %Período de la nueva señal

[t_m,y_m] = interpolacion(y,t,T_m_2,@sinc2);
figure();
stem(t_m,y_m);
title("Interpolacion con SINC");

[t_m,y_m] = interpolacion(y,t,T_m_2,@escalon);
figure();
stem(t_m,y_m);
title("Interpolación con ESCALÓN");

[t_m,y_m] = interpolacion(y,t,T_m_2,@intlineal);
figure();
stem(t_m,y_m);
title("Interpolación LINEAL");
