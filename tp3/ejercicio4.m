close all

%1a

f_s=1;f_m=20;t_i=0;t_f=1;phi=0;
cmuestras = length(t_i:(1/f_m):t_f);
y = zeros(10,cmuestras);
y_f = zeros(1,cmuestras);

for i=1:10
	f_s = i;
	[t,y(i,:)] = senoidal1(f_s,f_m,t_i,t_f,phi);
	y_f += .1 * y(i,:); %Genero la combinacion lineal
end

prin = zeros(1,10);
for i=1:10
	prin(i) = proint(y(i,:),y_f);
end
figure();
bar(prin);
title("Original (sin cambio de fase)");

%1b

y_cf = zeros(10,cmuestras); %Las 10 señales con fases aleatorias (separadas)
prin_f = zeros(1,10); %Productos internos entre las señales con fase cero y la combinación lineal con fases cambiabas
y_fase = zeros(1,cmuestras);%Combinacion lineal de las señales defasadas

for i=1:10
	f_s = i;
	phi = rand(1)*2*pi; %Fase aleatoria entre 0 y 2pi
	[t,y_cf(i,:)] = senoidal1(f_s,f_m,t_i,t_f,phi);
	y_fase += .1 * y_cf(i,:); %Genero la combinacion lineal
end

for i=1:10
	prin_cf(i) = proint(y(i,:),y_fase);
end

figure();
bar(prin_cf);
title("P.I. entre la combinacion lineal de señales defasadas y las senoidales con fase 0");

%1c

f_s = 5.5;f_m=20;t_i=0;t_f=1,phi=0;
[~,y_cua] = cu1(f_s,f_m,t_i,t_f,phi);

for i=1:10
	prin_cua(i) = proint(y(i,:),y_cua);
end

figure();
bar(prin_cua);
title("P.I. entre las señales originales y una onda cuadrada de 5.5Hz");

