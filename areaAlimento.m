function area = areaAlimento(imgBinarizada)
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
