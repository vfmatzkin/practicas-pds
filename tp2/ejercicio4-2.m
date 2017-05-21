close all
%4.1: y[n] = x[n] + 0.5 * x[n-1]

x = zeros(1,30);
x (1) = 1;

y = zeros(size(x));

for i=1:length(x)
	if i==1
		y(i) = x(i);
	else
		y(i) = x(i) + .5 * x(i-1);
	end
end

stem(y);

%Es de respuesta finita al impulso


