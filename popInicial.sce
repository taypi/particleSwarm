function [x,p,v]=popInicial(nInd)
    for i = 1:nInd
		x(i,1:2)=[rand()*500*((-1)^ceil(rand()*100)),rand()*500*((-1)^ceil(rand()*100))];
		p(i,1:2) = x(i,:);
		v(i,1:2) = [rand()*500*((-1)^ceil(rand()*100)),rand()*500*((-1)^ceil(rand()*100))];
    end
endfunction
