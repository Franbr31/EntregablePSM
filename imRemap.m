function out = imRemap(image)
%Todo el c�digo est� documentado en el PDF Documentaci�nEntregable2.pdf

maxval = max(max(image));
minval = min(min(image));

minval
maxval

[filas,cols]=size(image);

for i=1:filas
  for j=1:cols
    image(i,j) = (image(i,j)-minval)*255/(maxval-minval);
   endfor
endfor

out = uint8(image);
endfunction
