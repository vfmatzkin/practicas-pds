function [x_out] = shift(x_in)
    % intercambia la segunda mitad del vector por la primera.
    % especialmente útil para reordenar vectores con los resultados de fft
    % se consideran los casos par e impar
    N = length(x_in);
    x_out = zeros(1,N);
     
    if mod(N,2) == 0 
        x_out(1:N/2) = x_in(N/2+1:N);
        x_out(N/2+1:N) = x_in(1:N/2);
    else
        x_out(1:floor(N/2)) = x_in(floor(N/2)+2:N);
        x_out(floor(N/2)+1:N) = x_in(1:floor(N/2)+1);
    end
end