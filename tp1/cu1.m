function [t,c] = cu1(f_s,f_m,t_i,t_f,phi)
	%f_s: Frecuencia de la señal
	%f_m: Frecuencia de muestreo
	%t_i, t_f: Tiempos inicial y final
	%phi: Angulo de fase

	t_m = 1/f_m; %Período de muestreo
	t = t_i:t_m:t_f; %Tiempos donde se evalua la funcion	
	tam = length(t);
	for tt=1:tam
		if mod(2*pi*f_s*t(tt)+phi,2*pi) >= pi
			c(tt) = -1;
		else
			c(tt) = 1;
		end
	end
end	
