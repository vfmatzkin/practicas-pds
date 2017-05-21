close all
%Ejercicio 2:
%1)Inversion: Es invertir los valores de la salida

f_s=5;f_m=100;t_i=0;t_f=1;phi=.5;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
y = -y; %INVERSION
figure();
stem(t,y);
title("Inversion");

%2)Rectificación: De media onda (cuando la salida es negativa se anula directamente) y onda completa (cuando la salida es negativa se toma su valor absoluto)

f_s=5;f_m=100;t_i=0;t_f=1;phi=0;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
[y] = rectificar1(y);
figure();
stem(t,y);
title("Rectificación de Media Onda");

f_s=5;f_m=100;t_i=0;t_f=1;phi=0.5;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
[y] = rectificar2(y);
figure();
stem(t,y);
title("Rectificación de Onda Completa");


%3)Cuantización en 8 niveles:

%Tomar una señal discreta de ejemplo (la del ejercicio 1)
f_s=5;f_m=100;t_i=0;t_f=1;phi=.5;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
figure();
stem(t,y);
title("Señal discreta original");

%Cuantizarla en N niveles y con paso H
N = 8;
H = (max(y)-min(y))/N;
y_m = cuantizar(y,N,H);
figure();
stem(t,y_m);
title("Cuantización en 8 niveles");
