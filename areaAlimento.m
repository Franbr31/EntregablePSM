function area = areaAlimento(imgBinarizada)
  %Todo el c�digo est� documentado en el PDF Documentaci�nEntregable2.pdf
  [filas, cols, canales] = size(imgBinarizada);

  area = 0;
  for i=1:filas
    for j=1:cols
      if imgBinarizada(i,j) == 0
        area++;
        endif
     endfor 
   endfor
  
  
  
endfunction
