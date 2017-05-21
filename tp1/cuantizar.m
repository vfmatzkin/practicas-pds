function y_m = cuantizar(y,N,H)
	menor = min(y);
	y = y - menor; %Hago positiva la funcion
	tam = length(y);
	
	y_m = zeros(size(y));
	for i=1:tam
		if y(i) < 0
			y_m(i) = 0;
		elseif (y(i)>=0) && (y(i) < (N-1)*H )
			y_m(i) = H*floor(y(i)/H);
		else
			y_m(i) = (N-1)*H;
		end
	end
	y_m = y_m + menor;
end
