function hh = deteccionColor(IN)
  [filas, cols, canal] = size(IN);
  %colores = coloresProhibidos(IN);
 
  [R, G, B] = Canales(IN);
  Rnorm = normalizaImagen(R, 1); 
  Gnorm = normalizaImagen(G, 2);
  Bnorm = normalizaImagen(B, 3);

  for i=1:filas
     for j=1:cols
        [h, l, s] = rgb2hls(Rnorm(i, j), Gnorm(i, j), Bnorm(i, j)); 
        H(i, j) = h;
        L(i, j) = l;
        S(i, j) = s;
     endfor
  endfor



OUT = uint8(H);
hh = histogram(OUT, 1, 360);
aux = 0;
indice = 0;
for k=1:size(hh)(2)
   if hh(k) > aux
      aux = hh(k);
      indice = k;
     endif
  endfor

color = indice -1;
  
figure();
showHisto(hh,360);  
  
endfunction

