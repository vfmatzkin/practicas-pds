close all
%2.1
f_s = 2; t_m = .01; f_m = 1/t_m; t_i = 0; t_f = 1-t_m; phi = 0;
[~,y1] = senoidal1(f_s,f_m,t_i,t_f,phi);
[~,y2] = cu1(f_s,f_m,t_i,t_f,phi);
f_s = 4;
[~,y3] = senoidal1(f_s,f_m,t_i,t_f,phi);
f_s = 3.5;
[~,y4] = senoidal1(f_s,f_m,t_i,t_f,phi);

p1 = proint(y1,y2);
p2 = proint(y1,y3);
p3 = proint(y2,y3);
p4 = proint(y1,y4);

display("En el dominio temporal:");
display(cstrcat(" -Producto interno entre a y b: ",num2str(p1)));
display(cstrcat(" -Producto interno entre a y c: ",num2str(p2)));
display(cstrcat(" -Producto interno entre b y c: ",num2str(p3)));
display(cstrcat(" -Producto interno entre a y otra de 3.5Hz: ",num2str(p4)));

%SALIDA:
%Producto interno entre a y b: 63.578
%Producto interno entre a y c: 3.126e-15
%Producto interno entre b y c: 3.5527e-15
%Tiene sentido ya que las unicas con la misma frecuencia son las a y b

%2.2

f1 = fft(y1);
nf1 = abs(f1);
subplot(4,1,1);
[x,nf1] = acomodarfft(nf1,t_m);
stem(x,nf1);
title("TDF de y1");


f2 = fft(y2);
nf2 = abs(f2);
subplot(4,1,2);
[x,nf2] = acomodarfft(nf2,t_m);
stem(x,nf2);
title("TDF de y2");


f3 = fft(y3);
nf3 = abs(f3);
subplot(4,1,3);
[x,nf3] = acomodarfft(nf3,t_m);
stem(x,nf3);
title("TDF de y3");

f4 = fft(y4);
nf4 = abs(f4);
subplot(4,1,4);
[x,nf4] = acomodarfft(nf4,t_m);
stem(x,nf4);
title("TDF de 3.5Hz");

pf1 = proint(nf1,nf2);
pf2 = proint(nf1,nf3);
pf3 = proint(nf2,nf3);
pf4 = proint(nf1,nf4);

display("En el dominio frecuencial:");
display(cstrcat(" -Producto interno entre a y b: ",num2str(pf1)));
display(cstrcat(" -Producto interno entre a y c: ",num2str(pf2)));
display(cstrcat(" -Producto interno entre b y c: ",num2str(pf3)));
display(cstrcat(" -Producto interno entre a y otra de 3.5Hz: ",num2str(pf4)));
%La transformada de Fourier para este tamaño de ventana (determinado por la frecuencia) no posee una componente para 3.5Hz por lo que se usa una combinacion 
