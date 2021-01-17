function imagenOriginal = eleccionImagen()
  %--------------------- Menú inicial
printf('¿Qué imagen se va a procesar?\n');
printf('[1] tomate.png\n');
printf('[2] peraEco.jpeg\n');
printf('[3] manaza2.jpg\n');
printf('[4] NaranjaRedonda.jpg\n');
printf('[5] filaplatanos.jpg\n');
printf('[6] Berenjena.jpg\n');
printf('[7] banano.jpeg\n');
printf('[8] zanahoria.jpg\n');
printf('[9] brocoli_g.jpg\n');
printf('[10] pimientito.jpg\n');
titulo = input('elige un número de imagen: ');

switch(titulo)
case 1
  imagenOriginal= imread('imagenes/tomate.png');
case 2
  imagenOriginal= imread('imagenes/peraEco.jpeg');
case 3
  imagenOriginal= imread('imagenes/manaza2.jpg');
case 4
  imagenOriginal= imread('imagenes/NaranjaRedonda.jpg');
case 5
  imagenOriginal= imread('imagenes/filaplatanos.jpg');
case 6
  imagenOriginal= imread('imagenes/Berenjena.jpg');
case 7
  imagenOriginal= imread('imagenes/banano.jpeg');
case 8
  imagenOriginal= imread('imagenes/zanahoria.jpg');
case 9
  imagenOriginal= imread('imagenes/brocoli_g.jpg');
case 10
  imagenOriginal= imread('imagenes/pimientito.jpg');
endswitch


endfunction
