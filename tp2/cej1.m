close all

n = 50;
x = rand(1,n);
h = rand(1,n);

y = convolucion(x,h);
y2 = conv(x,h);

dista = norm(y-y2,2);
display("Norma 2 entre convolucion y conv: ");
dista

tama = length(x)+length(h)-1;
A = zeros(1,tama);
A(1) = 1;

y3 = filter(h,A,[x zeros(1,49)]);

dista2 = norm(y-y3,2);
display("Norma 2 entre convolucion y filter: ");
dista2
