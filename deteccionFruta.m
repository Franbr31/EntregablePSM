function OUT = deteccionFruta(imgOriginal, imgBinarizada)
  %imshow(imgOriginal);
  [filas, cols, canales] = size(imgOriginal);
  %imgBinarizada = binarizarImagenColor(imgOriginal);
  
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
  
  %imshow(OUT);
  
endfunction
