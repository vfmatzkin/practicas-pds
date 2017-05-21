function [frec,x_out] = fourierv(x_in,fm)
    % recibe como parámetros de entrada la señal transformada con fft y la
    % frecuencia de muestreo y devuelve el vector de frecuencias y la fft
    % rotada de forma circular, así queda centrada con respecto al cero
    N = length(x_in);
    df = fm/N;
     
    % reordena el vector de muestras de la transformada de fourier (fft)
    x_out = shift(x_in);
     
    % creo el vector de frecuencias...veo caso par e impar
    if mod(N,2) == 0 
        frec = -fm/2:df:fm/2-df;
    else
        frec = -fm/2+df/2:df:fm/2-df/2;
    end
end