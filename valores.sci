function [minimo, xm, ym] = valores(x,y);
	z = -x.*sin(sqrt(abs(x)))-y.*sin(sqrt(abs(y)));
	x = x/250;
	y = y/250;

	w = x.*z;
    [minimo, indice] = min(w);
    xm = x(indice)*250;
    ym = y(indice)*250;
endfunction
