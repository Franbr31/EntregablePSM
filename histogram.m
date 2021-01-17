function h = histogram(image, canal)
%Todo el código está documentado en el PDF DocumentaciónEntregable2.pdf
h=zeros(1,256);
[filas, cols, canales]= size(image);

for i=1:filas
  for j=1:cols
    pixel = image(i,j,canales)+1;
    h(pixel) = h(pixel)+1;
  end

end

end