
function [umbral, mu1, mu2] = mvThreshold(histo) 
%Todo el código está documentado en el PDF DocumentaciónEntregable2.pdf

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
SA = zeros(1,256);
SA(1) = histo(1);
for i=2:256
  SA(i)=SA(i-1)+histo(i);
endfor
endfunction


function M = ACProm(histo) 
M = zeros(1,256);
M(1) = 0;
for i=2:256
  M(i)=M(i-1)+(i-1)*histo(i);
endfor

endfunction
