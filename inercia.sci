function inercia = pond(k, kmax, c1, c2);
	inerciaMax = 0.9;
	inerciaMin = 0.4;
	inercia = inerciaMax - k*((inerciaMax - inerciaMin)/kmax);
endfunction
