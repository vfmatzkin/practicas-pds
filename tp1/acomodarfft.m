function [x,tf] = acomodarfft(f,t)
	n = length(f);
	f_m = 1/t;
	delta = f_m / n; %Avance en x - RESOLUCION FRECUENCIAL deltaf = 1/NT
	
	f = abs(f);
	if(mod(n,2) == 0) %Si la cantidad de elementos es par
		tf = [f(n/2+1:end) f(1:n/2)];
		x = -f_m/2:delta:f_m/2-delta;
	else
		tf = [f(ceil(n/2)+1:end) f(1:floor(n/2)+1)];
		x = ceil(-f_m/2):delta:floor(f_m/2);
	end
end	
