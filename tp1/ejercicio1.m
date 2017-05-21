%Ejercicio1a
f_s=5;f_m=20;t_i=0;t_f=1;phi=.5;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
stem(t,y);

%Ejercicio 1b
%f_s=15;f_m=200;t_i=-1;t_f=1;phi=0;
%[t,y]=sinc1(f_s,f_m,t_i,t_f,phi);
%stem(t,y);

f_s=15;
[y]=sinc2(f_s,x);


%Ejercicio 1c
f_s=2;f_m=100;t_i=0;t_f=1;phi=0;
[t,y]=cu1(f_s,f_m,t_i,t_f,phi);
stem(t,y);

