Fs=10;
Fm=1000;
Tm=1/Fm;
t=(0:Tm:1-Tm);

s=sin(2*pi*Fs*t);

S=fft(s);
N=length(S);
ret=10; %retardo de 10 muestras

%retardo en el tiempo de frcuencia
for k=1:N
    S(k)=S(k)*exp(-1i*2*pi*k*ret/N);
end

s_ant=ifft(S); %anti transformada de fourier

%{
stem (t,s);
hold on;
stem (t,real(s_ant),'r');
%}

%mirando bien en la grafica se puede apreciar el desplazamiento de 10
%muestras, otra forma es desplazar s y restarla con s_ant, deberia dar 0

tcorrido=(-10/Fm:Tm:1-Tm-10/Fm);
s_corrida=sin(2*pi*Fs*tcorrido);

stem (t,s_corrida);
hold on;
stem (t,real(s_ant),'r');

resta=s_corrida-real(s_ant);
resta=norm(resta,2);
disp(['si es cero anda-> ', num2str(resta)]);
%si bien no es exactamente cero yo creo que es por la presicion numeria en
%el calculo. En la grafica se puede ver que toman valores muy muy parecidos
