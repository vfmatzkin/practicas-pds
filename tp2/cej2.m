n = 50;
%x = rand(1,n);
%h = rand(1,n);

x=[1 3 -2 1];
h=[1 1 0 0];

y4 = convolucionc(x,h,10);

stem(y4);
