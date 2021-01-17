function OUT = deteccionFruta(imgOriginal, imgBinarizada)
  %Todo el c�digo est� documentado en el PDF Documentaci�nEntregable2.pdf

  [filas, cols, canales] = size(imgOriginal);
  
  for i=1:filas
    for j=1:cols
      if imgBinarizada(i,j) == 0
        OUT(i,j,1:2) = 0;
        OUT(i,j,3) = 255;
      else
        OUT(i,j,1:canales) = imgOriginal(i,j,1:canales);
        endif
    endfor
  endfor
  

  
endfunction
