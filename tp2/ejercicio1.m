close all
%1.1 RESUMEN: Causal, Lineal, Invariante en el tiempo y no posee memoria

%1.1 Es causal ya que no depende de los valores futuros
T=.1;A=2.5;f_s=2; %Defino los parámetros 
t = 0:T:1;
x1 = floor(10*rand(length(t),1));
x2 = floor(100*rand(length(t),1));
x3 = x1+x2;

y1 = func11(x1,t,f_s,A);
y2 = func11(x2,t,f_s,A);

y12 = y1 + y2;
subplot(1,2,1);
stem(t,y12);
y3 = func11(x3,t,f_s,A);
subplot(1,2,2);
stem(t,y3);

%Con esto se puede ver que ambas gráficas son iguales, por lo que es lineal
[res, invariante] = verificar_invariancia(x1,y1,t,@func11);

%Ejemplo con una funcion variante en el tiempo (no se si está bien planteada, pagina 113 del libro)
%[res, invariante] = verificar_invariancia(x1,y1,t,@func112);

%No posee memoria ya que el valor de y no depende de sus valores previos

