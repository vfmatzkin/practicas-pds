function y = signo(x)
	y = ones(size(x));	
	y(find(x<0)) = -1;
end
