fm = 10000;
T = 1/fm;
t = 0:T:1-T;
N = length(t);
k = 0:N-1;
j = sqrt(-1);
z = exp(j*2*pi*k/N);

c = 'rgkmrgkb'; % colores

%% 1. y[n] - 1/2y[n-1] + 1/4y[n-2] = x[n]
H = z.^2 ./ (z.^2 -z/2 + 1/4);
[fv,H] = fourierv(H,fm);

subplot(2,2,1);
plot(fv,abs(H),c(1),'linewidth',2);
grid on; xlabel('Frecuencia'); ylabel('H(z)');


%% 2. y[n] = y[n-1] + y[n-2] + x[n-1]
H = z ./ (z.^2 -z -1);
[fv,H] = fourierv(H,fm);

subplot(2,2,2);
plot(fv,abs(H),c(2),'linewidth',2);
grid on; xlabel('Frecuencia'); ylabel('H(z)');

%% 3. y[n] = 7x[n] + 2y[n-1] - 6y[n-2]
H = 7*z.^2 ./ (z.^2 - 2*z + 6);
[fv,H] = fourierv(H,fm);

subplot(2,2,3);
plot(fv,abs(H),c(3),'linewidth',2);
grid on; xlabel('Frecuencia'); ylabel('H(z)');


%% 4. y[n] = sum((2^-k)x[n-k) k = 0..7
aux = zeros(1,N);
H = zeros(1,N);
for k = 0 : 7
    aux = 2^(-k)*z.^(-k);
    H = H + aux;
end

[fv,H] = fourierv(H,fm);

subplot(2,2,4);
plot(fv,abs(H),c(4),'linewidth',2);
grid on; xlabel('Frecuencia'); ylabel('H(z)');
