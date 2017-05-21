function mostrar(celda)
	if !iscell(celda) %si no es una celda muestro nomas
		if !isnumeric(celda)
			fprintf(stderr,cstrcat(celda,' '));
		else
			fprintf(stderr,cstrcat(num2str(celda),' '));
		end	
	else
		for i=1:length(celda)
			fprintf(stderr,cstrcat(num2str(cell2mat(celda(i))),' '));
		end	
		fprintf(stderr,'\n');
	end
end
