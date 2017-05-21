function ejercicio2
fm = 10000;
T = 1/fm;
t = 0:T:1-T;
N = length(t);
k = 0:N-1;
j = sqrt(-1);
z = exp(j*2*pi*k/N);

%1 Y(z) - 1/2 Y(z) z^-1 + 1/4 Y(z) z^-2 = X(z)

Hz= (1-.5*z.^-1+.25*z.^-2).^-1;
subplot(2,1,1)
stem(Hz);
title('Hecho a mano');

[Hk2,w]=freqz(1,[1,-.5,.25]);
subplot(2,1,2);
%stem(w,abs(Hk2));
stem(Hk2);
title('Hecho con freqz');

