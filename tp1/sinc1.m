function [t,y] = sinc1(f_s,f_m,t_i,t_f,phi)
	%f_s: Frecuencia de la señal
	%f_m: Frecuencia de muestreo
	%t_i, t_f: Tiempos inicial y final
	%phi: Angulo de fase

	t_m = 1/f_m; %Período de muestreo
	t = t_i:t_m:t_f; %Tiempos donde se evalua la funcion	
	tam = length(t);
	for tt=1:tam
		if t(tt) == 0
			y(tt) = 1;
		else
			y(tt) = sin(2*pi*f_s*t(tt)+phi)/t(tt);
		end
	end
end
