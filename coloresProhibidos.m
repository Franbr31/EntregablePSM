function colores = coloresProhibidos(IN)
  
  [filas, cols, canal] = size(IN);
  
  esq1 = IN(1,1);
  esq2 = IN(1,cols);
  esq3 = IN(filas,1);
  esq4 = IN(filas,cols);
  [h1,l1,s1] = rgb2hls(normaliza(IN(1,1,1)),normaliza(IN(1,1,2)),normaliza(IN(1,1,3)));
  [h2,l2,s2] = rgb2hls(normaliza(IN(1,cols,1)),normaliza(IN(1,cols,2)),normaliza(IN(1,cols,3)));
  [h3,l3,s3] = rgb2hls(normaliza(IN(filas,1,1)),normaliza(IN(filas,1,2)),normaliza(IN(filas,1,3)));
  [h4,l4,s4] = rgb2hls(normaliza(IN(filas,cols,1)),normaliza(IN(filas,cols,2)),normaliza(IN(filas,cols,3)));
  
  colores = [h1,h2,h3,h4];
  
endfunction
