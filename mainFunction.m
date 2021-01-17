function OUT = mainFunction(nombreRutaImagen)
clc;
close all;
%Todas las funciones est�n documentadas en el PDF Documentaci�nEntregable2.pdf
%--------------------- Men� inicial
printf('�Qu� funcionalidad del entregable se va a ejecutar?\n');
printf('[1] Detecci�n de bordes y per�metro\n');
printf('[2] Detecci�n de p�xeles ocupados por la fruta y su �rea\n');
printf('[3] Color de la fruta\n');
apartado = input('Elige la opción [1-3] ');

imagenOriginal= imread(nombreRutaImagen);

switch(apartado)
  case 1 %Detecci�n de bordes y per�metro
    figure(1);
    imshow(imagenOriginal);
    printf('Binarizando imagen...\n'); 
    imBinaria= binarizarImagenColor(imagenOriginal);
    figure(2);
    imshow(imBinaria);  
    printf('Realzando bordes de la imagen...\n'); 
    imBordeada= prewitt(imBinaria);
    figure(3);
    imshow(imBordeada); 
    printf('Detectando bordes de la fruta/verdura y pintando de azul...\n'); 
    [imDetectaBordes, perimetro]= deteccionBordes2(imagenOriginal,imBordeada);
    figure(4);
    imshow(imDetectaBordes); 
    printf('El per�metro en p�xeles de la fruta/verdura es:\n');
    perimetro
    
  case 2 %Detecci�n de p�xeles ocupados por la fruta y su �rea
    figure(1);
    imshow(imagenOriginal);
    printf('Binarizando imagen...\n'); 
    imBinaria= binarizarImagenColor(imagenOriginal);
    figure(2);
    imshow(imBinaria);
    printf('Detectando espacio de la fruta/verdura y pintando de azul...\n');
    frutaDetectada= deteccionFruta(imagenOriginal,imBinaria);
    areaFruta= areaAlimento(imBinaria);
    figure(3);
    imshow(frutaDetectada);
    printf('El �rea en p�xeles que ocupa la fruta/verdura es:\n');
    areaFruta
    
  case 3 %Color de la fruta
    figure(1);
    imshow(imagenOriginal);
    printf('Binarizando imagen...\n'); 
    imBinaria= binarizarImagenColor(imagenOriginal);
    figure(2);
    imshow(imBinaria);
    printf('Analizando el color de la imagen...\n');
    colorAlimento= color(imagenOriginal,imBinaria);
    figure(3);
    imshow(colorAlimento);
    printf('�Era este el color de la fruta/verdura?\n');
  
endswitch 
endfunction
