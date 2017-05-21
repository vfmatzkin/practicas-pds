function [res, invariante] = verificar_invariancia(x,y,t,evaluar_f)
	tam = length(x);
	res = zeros(size(x));
	invariante = true;
	for i=1:tam
		x_d = x(i:end); %x desplazado
		y_d = y(i:end); %y desplazado
		t_d = t(i:end); %t desplazado
		
		f_s = 2;
		A = 2.5;
		y_n = evaluar_f(x_d,t_d,f_s,A);
		if y_n != y_d
			res(i) = 1;
			invariante = false;		
		end
	end
end
