function h = histogram(image, canal, niveles)
if nargin<3
	niveles=255;
endif  
h=zeros(1,niveles+1);
[filas, cols, canales]= size(image);

%Recorrer la imagen, tomar el valor del pixel actual, e incrementar h(pixel) en una unidad

for i=1:filas
  for j=1:cols
    pixel = image(i,j,canal);
    h(pixel+1) = h(pixel+1) + 1;
   endfor;
endfor;

end