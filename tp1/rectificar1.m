function y = rectificar1(y)
	for i=1:length(y)
		if y(i)<0
			y(i) = 0;
		end
	end
end
