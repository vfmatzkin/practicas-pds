close all
%4.1: x[n] = y[n] - y[n-2]

y = zeros(1,30);
y(1) = 1;

x = zeros(size(y));

for i=1:length(y)
	if i==1 || i==2
		x(i) = y(i);
	else
		x(i) = y(i) - y(i-2);
	end
end

stem(x);

%Es de respuesta finita al impulso


