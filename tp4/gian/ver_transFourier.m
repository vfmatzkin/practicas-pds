function [ TF ] = ver_transFourier( S,Tm )
N=length(S);
Fm=1/Tm;
delta_f = 1/(N*Tm);

S=abs(S); %magnitud de cada complejo

if (mod(N,2) == 0) %si N es par
    TF=[S(N/2+1:end) S(1:N/2)]; %acomodo la transformada
    %x=(-N/2 : 1/(N*Tm) : N/2-1/(N*Tm)); %empiezo a mostrar desde Fm/2
    x=(-Fm/2 : delta_f : Fm/2-delta_f);
    
else %si N es impar
    TF=[S(ceil(N/2)+1:end) S(1:floor(N/2)+1)];
    x=(ceil(-Fm/2) : delta_f : floor(Fm/2));
   
    
end
stem(x,TF);

end

