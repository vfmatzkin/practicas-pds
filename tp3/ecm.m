function erro = ecm(y1,y2) %Error cuadrático medio
	erro = norm((y1 - y2).^2,2);
end
