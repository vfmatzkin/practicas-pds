%Ejercicio 1
salida = cell();

%SENOIDAL
	%Valor medio:
	salida(end+1) = 'SENOIDAL: ';
	f_s=5;f_m=20;t_i=0;t_f=1;phi=.5;
	[t,ys]=senoidal1(f_s,f_m,t_i,t_f,phi);
	fej1(salida,ys);
	salida = cell();
%RAMPA	
	salida(end+1) = 'RAMPA: ';
	[t,yr]=rampa(f_m,t_i,t_f);
	fej1(salida,yr);
	salida = cell();
%ONDA CUADRADA
	salida(end+1) = 'ONDA CUADRADA: ';
	[t,yc]=cu1(f_s,f_m,t_i,t_f,phi);	
	fej1(salida,yc);
	salida = cell();
%ALEATORIA
	salida(end+1) = 'SEÑAL ALEATORIA: ';
	yr = randn(1,25);
	fej1(salida,yr);
	salida = cell();	
	
