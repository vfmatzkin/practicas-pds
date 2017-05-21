function ejercicio3
%tengo que H(z)= [z^3 - 2 z^2 -2 z -1] / [z^2 (z-1)(z-0.5)(z-0.2)] por lo
%tanto a simple vista se que los polos son 1, 0.5 y 0.2 (se marcan con x en
%el diagrama de polos y ceros)
%r=roots([1, -2, -2, -1])   esto me da las raices de los coeficientes de la
%ecuacion cubica del numerador. los ceros son: 1.0000, 0.5000 + 0.8660i y
% 0.5000 - 0.8660i
%%%%como los polos estan todos dentro del circulo unitario entonces el
%%%%sistema es estable
%si llamamos a y b a los vectores de coeficientes que acompañan a Y(z) y
%X(z) y usamos zplane(a,b) obtenemos el diagrama de polos y ceros del
%sistema
%a=[1, -2, -2, -1] y b=[1 -1.7 .8 -.1 0 0 0 0 0 0] (se llega a esto
%distribuyendo los productos que aparecen al principio en el denominador de H(z)

%%respuesta al impulso: COMPLETAR
%%yo tengo la funcion de transferencia H(z), para obtener la respuesta al
%%impulso debo apliar la propiedad de desplazamiento (libro pag 149- creo que antitransformar) 
%%PERO NO SE COMO y despues mandarle un impulso unitario a la ecuacion en diferenia que obtengo
%%para poder graficarla.

