tonos = csvread("te.txt");

intervalos = [16800 21701;30000 34301;39401 43500;48201 53001;58601 63701;69301 74501;80301 85801];

%Reconocimiento de los tonos 
%Genero las senoidales
telefono = [1 2 3;4 5 6;7 8 9;10 0 11];
f_m=11025;t_i=0;
t_f = 0.46259; %La mayor de las duraciones de las pulsaciones
%vertical = [697 770 852 941];
%horizontal = [1209 1336 1477];
cmuestras = length(t_i:(1/f_m):t_f);

y_f = zeros(1,cmuestras);
frecu = [697 770 852 941 1209 1336 1477];

fases = 0:.1:2*pi;
c_fases = length(fases);
x = zeros(10,c_fases,cmuestras);%10 frecuencias (de 1Hz a 10Hz)
for i=1:7
	for j=1:c_fases
		f_s = frecu(i);
		phi = fases(j);
		[~,x(i,j,:)] = senoidal1(f_s,f_m,t_i,t_f,phi);
	end
end

teclas_presionadas = zeros(0);

for i=1:length(intervalos)
	mostrar(i)
	lon = intervalos(i,2) - intervalos(i,1)+1;
	maxiv = maxih = maxv = maxh = 1;%Maximos verticales y horizontales
	maxih += 4;
	for j=1:7 %Para cada frecuencia de teclas
		for k=1:1%c_fases
			val = proint(reshape(x(j,k,1:lon),1,lon),tonos(intervalos(i,1):intervalos(i,2)));
			if j==1 
				maxv = val;
			elseif j==5 
				maxh = val;
			end
			if j<5 %Filas
				if val > maxv			
					maxiv = j;
				end
			else %Columnas
				if val > maxh
					maxih = j;
				end
			end
		end	
	end
	maxih -= 4;
	teclas_presionadas(end+1) = telefono(maxiv,maxih);
end
