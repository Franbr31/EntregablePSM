function OUT= deteccionBordes(imgOriginal)
  
  imshow(imgOriginal);
  [filas, cols, canales] = size(imgOriginal);
  imgBinarizada = binarizarImagenColor(imgOriginal);
  imgBordes = prewitt(imgBinarizada);
%deteccion más color de fondo
  
  for i=1:filas
    for j=1:cols
      if (imgBordes(i,j) >160) || (imgBordes(i,j)<100)
        OUT(i,j,1:2) = 0;
        OUT(i,j,3) = 255;
      else
        OUT(i,j,1:canales) = imgOriginal(i,j,1:canales);
        endif
    endfor
  endfor
  
  imshow(OUT);
  
  
endfunction
