function imagenresultado= entregable2(imagename)
close all  
IN = imread(imagename); %imagen de entrada
binaria=binarizarImagenColor(IN)
figure()
imshow(binaria)
%OUT = deteccionFruta(IN)
imagenresultado=prewitt(binaria);
imshow(imagenresultado)
endfunction