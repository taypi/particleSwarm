function [minimo] = nuvem();
    clear;  
   	nInd = 50;
	c1 = 2;
	c2 = 1;
	[x,p,v] = popInicial(nInd);
    for k=1:50
        for i=1:nInd
	        if funcao(x(i,1),x(i,2)) < funcao(p(i,1),p(i,2)) then
	            p(i,1:2) = x(i,:);
	        end
	        if i == 1 | funcao(x(i,1),x(i,2)) < funcao(g(1,1),g(1,2))
	            g(1,1:2) = x(i,:);
			end
			for j = 1:2
				r1 = rand();
		    	r2 = rand();
				w = pond(k,50,c1,c2);
				v(i,j) = w*v(i,j) + c1*r1*(p(i,j) - x(i,j)) + c2*r2*(g(1,j) - x(i,j));
	       	end
			x(i,1:2) = x(i,:) + v(i,:);
			for u=1:2
				if x(i,u) < -500
					x(i,u) = -500;
					v(i,u) = 0;
				elseif x(i,u) > 500
					x(i,u) = 500;
					v(i,u) = 0;
				end
			end
		end
	end
    [minimo(1,1), minimo(1,2), minimo(1,3)] = valores(x(1:nInd,1),x(1:nInd,2));
endfunction
 
