%
function [umbral, mu1, mu2] = mvThreshold(histo) 
% El algoritmo presupone que el histograma es Binodal
% Devuelve el umbral y la posición de los máximos de 
% los dos nodos principales.
SA = ACS(histo);
M = ACProm(histo);

umbral = fix(M(256)/SA(256));
last = 1;

  while (last != umbral)
    last = umbral;
    mu1 = M(umbral)/SA(umbral);
    mu2 = (M(256)-M(umbral))/(SA(256)-SA(umbral));
    umbral = fix((mu1 + mu2)/2);
  endwhile
  
endfunction


function SA= ACS(histo)
% Calcula la suma correlativa hasta del histograma

SA = zeros(1,256);
SA(1) = histo(1);
for i=2:256
  SA(i)=SA(i-1)+histo(i);
endfor

%Suma acumulativa desde 2 a 256 de histo

endfunction


function M = ACProm(histo) 
% 
M = zeros(1,256);
M(1) = 0;
for i=2:256
  M(i)=M(i-1)+(i-1)*histo(i);
endfor
%Suma acumulativa de M: posicion anterior por valor de histo mas valor anterior de M (pista i=2:256)

endfunction
