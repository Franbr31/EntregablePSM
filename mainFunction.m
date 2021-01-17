function OUT = mainFunction(nombreRutaImagen)
clc;
close all;
%Todas las funciones están documentadas en el PDF DocumentaciónEntregable2.pdf
%--------------------- Menú inicial
printf('¿Qué funcionalidad del entregable se va a ejecutar?\n');
printf('[1] Detección de bordes y perímetro\n');
printf('[2] Detección de píxeles ocupados por la fruta y su área\n');
printf('[3] Color de la fruta\n');
apartado = input('Elige la opciÃ³n [1-3] ');

imagenOriginal= imread(nombreRutaImagen);

switch(apartado)
  case 1 %Detección de bordes y perímetro
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
    printf('El perímetro en píxeles de la fruta/verdura es:\n');
    perimetro
    
  case 2 %Detección de píxeles ocupados por la fruta y su área
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
    printf('El área en píxeles que ocupa la fruta/verdura es:\n');
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
    printf('¿Era este el color de la fruta/verdura?\n');
  
endswitch 
endfunction
