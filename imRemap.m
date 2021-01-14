function out = imRemap(image)

maxval = max(max(image));
minval = min(min(image));

minval
maxval

%[c] image debe ser igual al valor actual menos el valor minimo por 255, este valor debe dividirse entre la diferencia entre maxval y minval
[filas,cols]=size(image);

for i=1:filas
  for j=1:cols
    image(i,j) = (image(i,j)-minval)*255/(maxval-minval);
   endfor
endfor

out = uint8(image);
endfunction
