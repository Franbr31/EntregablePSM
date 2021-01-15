function imagenBinaria= binarizarImagenColor(IN)
%Pasar una imagen a blanco y negro para poder binarizarla:
%IN = imread(image); %imagen de entrada
[filas, cols, canales] = size(IN);
%figure();
%imshow(IN); %mostramos la imagen original
imEscalaGrises = rgb2gray(IN); %transformamos valores rgb en hls y nos quedamos 
%con el brillo. As�, conseguiremos una escala de grises
%---------------------figure(2);
%---------------------imshow(imEscalaGrises);%mostramos la imagen en escala de grises
%imwrite(OUT, 'manzana_b.jpg');

histo= histogram(imEscalaGrises);%hallamos el histograma para poder identificar
%los nodos de nivel de gris de la imagen en escala de grises y que podamos
%realizar una binarizaci�n con umbral �ptimo calculado de forma autom�tica.
%---------------------figure(3);
%---------------------showHisto(histo);
[umbral, mu1, mu2] = mvThreshold(histo);%calculamos el umbral �ptimo a partir
%del histograma
hold on%para dibujar la l�nea sobre el histograma

%stem(umbral,histo(umbral),'b');%mostramos el histograma resultante con
%el umbral que ha calculado el algoritmo resaltado en azul
imagenBinaria=myImage2BW(imEscalaGrises, umbral);%binarizamos la imagen con el umbral �ptimo
%figure(4)
imshow(imagenBinaria);;%mostramos la imagen binarizada por el umbral 

endfunction