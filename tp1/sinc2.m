function y = sinc2(x)
	f_s = .5;
	%f_s: Frecuencia de la señal
	%x: Valor en el que se calcula sinc(x)
	if x == 0
		y=1;
	else
		y = sin(2*pi*f_s*x)/x;
	end
end
