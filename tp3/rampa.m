function [t,y] = rampa(f_m,t_i,t_f)
	%f_m: Frecuencia de muestreo
	%t_i, t_f: Tiempos inicial y final

	t_m = 1/f_m; %Período de muestreo
	t = t_i:t_m:t_f; %Tiempos donde se evalua la funcion
	y = t;
end
