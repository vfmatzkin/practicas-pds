%INSISO 1
f1=10;
f2=10.5;
Fm=50;
Tm=1/Fm;
t=(0:Tm:2-Tm);
s = sin(2*pi*f1*t) + sin(2*pi*f2*t)+4;

S=fft(s);
[ TF ] = ver_transFourier( S,Tm );

%INSISO 2
Es=(sum(s.^2)); %energia de la senoidal

S_mag=abs(S); %magnitud de la transformada
ES=(sum(S_mag.^2)); %energia de la transformada
ES=ES/length(S);

disp(['Energia Senoidal:',num2str(Es)]);
disp(['Energia de la transformada:',num2str(ES)]);

%------------------------------------------------------------------------

% Modificar la señal a esto : s[n] = sin(2πf1 t) + 4 sin(2πf2 t) + 4

% Al modificar la señal aparece la frecuencia = 0 la cual tiene una
% amplitud de 4000 ya que si  sum (x[n] * exp(0)) como exp(0) es 1, al
% hablar de una se�al periodica, su sumatoria seria 0, pero por otro lado
% tenemos una constante 4 que 'sobrevive' a esta 'periodicidad' y por lo
% tanto se suma 1000 veces (fm) dando 4000

%------------------------------------------------------------------------
%Modifique las frecuencias de las seniales seno de forma tal que f1 = 10 Hz y
%f2 = 11 Hz y analice los cambios en el espectro de magnitud de S[k].

% El espectro de frecuencia perteneciente a f2 ahora se encuentra en 11 y
% -11
    
%------------------------------------------------------------------------

%Modifique nuevamente las frecuencias de las se ̃ales seno de forma tal que
% f1 = 10 Hz y f2 = 10,5 Hz. ¿Que ocurre en el espectro de magnitud de S[k]
% La diferencia entre las frecuencias es menor al delta_frecuencia, o dicho
% de otra manera, tienen que ser multiplos enteros del delta_frecuencia por lo
% tanto ocurre una interpolacion entre los puntos del medio 

%------------------------------------------------------------------------
%4. Modifique el intervalo de tiempo de an �?lisis de la siguiente manera t =
%a [0 . . . 0, 72] seg. y analice los cambios en la TDF.

% El delta_frecuencia se hace mayor, porque el N se hace mas chico
% delta_frecuencia = fm/N