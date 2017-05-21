function y = func112(x,t,f_s,A)
	x = [0;x];	
	t = [0 t];
	y = zeros(size(x));
	for i = 2:length(t)
		y(i) = A*sin(2*pi*f_s*t(i)) * x(i-1);
	end
	y = y(2:end);
end
