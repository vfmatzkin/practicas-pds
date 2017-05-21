function y = convolucionc(x,h,tam)
	n = length(x);
	m = length(h);
%	tam = m+n-1; %Conv. lineal
	y = zeros(1,tam);
	for i=1:tam
%		if (i-j+1 <= m)
%			y(i) += x(mod(n+i-j,n)+1)*h(i-j+1);
%		end
		for j=1:m
			y(i) += x(mod(n+i-j,n)+1)*h(j);
		end
	end
end
