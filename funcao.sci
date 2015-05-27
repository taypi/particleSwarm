function [w] = funcao(x,y);
	z = -x.*sin(sqrt(abs(x)))-y.*sin(sqrt(abs(y)));
	x = x/250;
	y = y/250;

	w = x.*z;
endfunction
