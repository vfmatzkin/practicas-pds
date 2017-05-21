%Análisis: El producto interno de la señal consigo mismo da la energía de la señal (positiva). Al aumentar la amplitud esta energía aumentó proporcionalmente, en cambio, al cambiar la fase o la frecuencia el producto da un valor muy pequeño, lo cual puede dar a entender que el producto interno de dos señales muy diferentes tiende a cero.

salida = cell();
salida(end+1) = '-Senoidal: ';

A=1;f_s=5;f_m=20;t_i=0;t_f=1;phi=0;
salida(end+1) = 'f_s:';
salida(end+1) = f_s;
salida(end+1) = 'A:';
salida(end+1) = A;
salida(end+1) = 'phi:';
salida(end+1) = phi;
[t,y1]=senoidal1(f_s,f_m,t_i,t_f,phi);
y1 *= A;
prin1 = proint(y1,y1);
salida(end+1) = '\n--Producto interno entre la señal y ella misma';
salida(end+1) = prin1;
mostrar(salida);

salida = cell();
salida(end+1) = '-Cambio de Amplitud (1 -> 2): ';

A=2;
salida(end+1) = 'A:';
salida(end+1) = A;
[t,y2]=senoidal1(f_s,f_m,t_i,t_f,phi);
y2 *= A;
prin2 = proint(y1,y2);
salida(end+1) = '\n--Producto interno entre la señal original y la misma con el doble de amplitud:';
salida(end+1) = prin2;
mostrar(salida);

salida = cell();
salida(end+1) = '-Cambio de frecuencia (5Hz -> 10Hz): ';

A=1;f_s=10;
salida(end+1) = 'f_s:';
salida(end+1) = f_s;
[t,y3]=senoidal1(f_s,f_m,t_i,t_f,phi);
y3 *= A;
prin3 = proint(y1,y3);
salida(end+1) = '\n--Producto interno entre la señal original y la misma con el doble de frecuencia:';
salida(end+1) = prin3;
mostrar(salida);

salida = cell();
salida(end+1) = '-Cambio de Fase (0 -> pi/2): ';

f_s=5;phi=pi/2;
salida(end+1) = 'phi:';
salida(end+1) = phi;
[t,y4]=senoidal1(f_s,f_m,t_i,t_f,phi);
y4 *= A;
prin4 = proint(y1,y4);
salida(end+1) = '\n--Producto interno entre la señal original y la misma con el doble de frecuencia:';
salida(end+1) = prin4;
mostrar(salida);


