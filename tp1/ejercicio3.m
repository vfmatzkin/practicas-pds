%VER ejercicio3.txt !!!!!!!!!!!!!!!!!!!!!!!!!!!!!

f_s=20;f_m=800;t_i=0;t_f=.1;phi=-0.75398;
[t,y]=senoidal1(f_s,f_m,t_i,t_f,phi);
stem(t,y*3);
