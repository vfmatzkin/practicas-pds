function y = convolucion(x,h)
	n = length(x);
	m = length(h);
	tam = m+n-1;
	y = zeros(1,tam);
	for i=1:tam
		for j=1:i
			if (i-j+1 <= m) && (j <= n)
				y(i) += x(j)*h(i-j+1);
			end
		end
	end
end
