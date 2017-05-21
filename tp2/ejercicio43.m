close all
%4.1:  x[n] = y[n] - 0.5 * y[n-1] + 0.25 * y[n-2]

y = zeros(1,30);
y(1) = 1;

x = zeros(size(y));

for i=1:length(y)
	if i==1 
		x(i) = y(i);
	elseif i==2
		x(i) = y(i) - 0.5 * y(i-1);	
	else
		x(i) = y(i) - .5 * y(i-1) + .25 * y(i-2);
	end
end

stem(x);

%Es de respuesta finita al impulso


