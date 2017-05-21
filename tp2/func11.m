function y = func11(x,t,f_s,A)
	y = zeros(size(x));
	for i = 1:length(t)
		y(i) = A*sin(2*pi*f_s*t(i)) * x(i);
	end
end
