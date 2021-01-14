function OUT = deteccionFruta(imgOriginal)
  [filas, cols, canales] = size(imgOriginal);
  imgBinarizada = binarizarImagenColor(imgOriginal);
  
  for i=1:filas
    for j=1:cols
      if imgBinarizada(i,j) == 0
        OUT(i,j,1:canales) = 0;
      else
        OUT(i,j,1:canales) = imgOriginal(i,j,1:canales);
        endif
    endfor
  endfor
  
  
  
endfunction
