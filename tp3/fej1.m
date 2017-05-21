function fej1(salida,y)
	salida(end+1) = '\n  Valor medio:';	
	salida(end+1) = mean(y);
	salida(end+1) = '\n  Maximo:';
	salida(end+1) = max(y);
	salida(end+1) = '\n  Mínimo:';
	salida(end+1) = min(y);
	salida(end+1) = '\n  Amplitud:';
	salida(end+1) = norm(y,inf);
	salida(end+1) = '\n  Energía:';
	salida(end+1) = norm(y,2);
	salida(end+1) = '\n  Acción:';
	salida(end+1) = norm(y,1);
	salida(end+1) = '\n  Potencia media:';
	px = sum(abs(y).^2) * 1/(2*length(y));
	salida(end+1) = px;	
	salida(end+1) = '\n  RMS:';
	rms = sqrt(px);
	salida(end+1) = rms;
	mostrar(salida);
end
