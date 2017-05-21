%Frecuencias de las señales segun el insiso
Fa=2;
Fb=2;
Fc=4;

Fm=100;
Tm=1/Fm;
t=(0:Tm:1-Tm);

%señales
senoidal_1=sin(2*pi*Fa*t);
cuadrada=square(2*pi*Fb*t);
senoidal_2=sin(2*pi*Fc*t);

%Insiso 1 - verificar ortogonalidad

ayb=senoidal_1*cuadrada';
ayc=senoidal_1*senoidal_2';
byc=cuadrada*senoidal_2';

disp(['prod punto entre ayb= ', num2str(ayb)]);
disp(['prod punto entre ayc= ', num2str(ayc)]); %ortogonales
disp(['prod punto entre byc= ', num2str(byc)]); %ortogonales

%Insiso 2 - verificar ortogonalidad con las señales transformadas

senoidal_1t=fft(senoidal_1);
cuadrada_t=fft(cuadrada);
senoidal_2t=fft(senoidal_2);

ayb_t=senoidal_1t*cuadrada_t';
ayc_t=senoidal_1t*senoidal_2t';
byc_t=cuadrada_t*senoidal_2t';

disp(['prod punto entre ayb transformadas= ', num2str(ayb_t)]); 
disp(['prod punto entre ayc transformadas= ', num2str(ayc_t)]); %ortogonales
disp(['prod punto entre byc transformadas= ', num2str(byc_t)]); %ortogonales

%Se verifica que mantienen la ortogonalidad

%Insiso 3
%cambiando la frecuencia de la señal c) la ortogonalidad con la señal a) se
%mantiente
