%y,t señal y tiempos originales, T, periodo de muestreo original
%T_i es el nuevo período de muestreo
%La tengo que llamar asi interpolacion(y,t,T_i,@f_int)

function [t_m,y_m] = interpolacion(y,t,T_i,f_int)
	n = length(y); %n es la cantidad de muestras en la señal original
	dt = t(n) - t(1); %Tiempo en el que transcurre la señal
	m = dt / T_i + 1; %dt por la frecuencia da la cantidad de intervalos. M será la cantidad de muestras en la señal interpolada (el +1 lo obtuve de examinar la relación entre la cantidad de elementos y las propiedades de una señal de ejemplo, -ver cuál es la explicación-).
	T = t(2)-t(1); %t(1) puede no ser cero
	y_m = zeros(1,m); %salida
	t_m = t(1):T_i:t(n); %Los nuevos tiempos (Los instantes inicial y final son los mismos, pero se avanza según el nuevo período)
	for i = 1:m	%Representa al indice de las nuevas componentes de la señal
		for j=1:n %Son las viejas componentes de la señal
			y_m(i) += y(j) * f_int((t_m(i)-t(j))/T); %Cada elemento de la señal nueva se forma a partir de todos los valores de la señal vieja, ponderando a través de la función de interpolación
		end
	end
end
