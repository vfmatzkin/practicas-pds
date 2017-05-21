function y = rectificar2(y)
	for i=1:length(y)
		if y(i)<0
			y(i) = -y(i);
		end
	end
end
