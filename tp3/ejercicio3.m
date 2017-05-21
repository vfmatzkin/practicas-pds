%1.1

x = -1:.1:1;

y1 = signo(x);
y2 = legendre3(x,0,0);

err1 = ecm(y1,y2);
mostrar("Error cuadrático medio entre y y la aproximación usando Legendre3:");
mostrar(err1);
mostrar("\n");

%1.2

tam = length(x);
ecmm = zeros(tam);
for k=1:tam
	for i=1:tam
		for j=1:tam
			ecmm(i,j) = ecm(signo(x(k)),legendre3(x(k),x(i),x(j)));
		end
	end
end

surf(x,x,ecmm);

%%1.3

y3 = legendre5(x);
err3 = ecm(y1,y3);
y4 = legendre7(x);
err4 = ecm(y1,y4);
mostrar("Error cuadrático medio entre y y la aproximación usando Legendre5:");
mostrar(err3);
mostrar("\n");
mostrar("Error cuadrático medio entre y y la aproximación usando Legendre7:");
mostrar(err4);
mostrar("\n");

%El ECM se reduce cada vez menos al aumentar los coeficientes de Legendre (entre 5 y 7 no hay diferencia de ECM usando 4 digitos decimales, pero entre 3 y 5 hay una diferencia de 0.16130).

