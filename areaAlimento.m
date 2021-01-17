function area = areaAlimento(imgBinarizada)
  %Todo el código está documentado en el PDF DocumentaciónEntregable2.pdf
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
