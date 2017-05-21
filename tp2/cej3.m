n = 30;
a = 0.4;

x = ha = hb = zeros(1,n);
x(1) = x(2) =	 1;

for i=1:n
	ha(i) = sin(8*i);
	hb(i) = a^i;
end

y1 = conv(x,ha);
y1 = conv(y1,hb);

y2 = conv(x,hb);
y2 = conv(y2,ha);

stem(y1,"color","red");
stem(y2,"color","blue");

difer = norm(y1-y2,2)
