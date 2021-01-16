function imagenresultado= entregable2(imagename)
close all  
IN = imread(imagename); %imagen de entrada
imshow(IN);
imgBinaria=binarizarImagenColor(IN);
%figure()
imshow(imgBinaria);
%OUT = deteccionFruta(IN)
imgBordes=prewitt(imgBinaria);
imshow(imgBordes);
OUT1 = deteccionFruta(IN, imgBinaria);
imshow(OUT1);
area = areaAlimento(imgBinaria)
OUT2 = deteccionBordes2(IN, imgBordes);
imshow(OUT2);


endfunction