function alimento = clasificaAlimento(imagenOrinal, imagenBinarizada)
  alimentos = ['tomate','pera','manzana','naranja','fila de plátanos','berenjena','brócoli','zanahoria','pimiento','plátano'];
  BD_TAM = [21324,22338,12558,26492,18541,23947,8566,8354,18861,11936];
  BD_COLORES = ['rojo','verde claro','roja','naranja','amarillo','rosa','verde claro','naranja','rojo','amarillo'];
  colores = ['rojo','naranja','amarillo','verde claro','verde oscuro','verde agua','celeste','azul pavo','azul oscuro','morado','rosa','fucsia'];
  grados = [0,30,60,90,120,150,180,210,240,270,300,330];
  tam = areaAlimento(imagenBinarizada);
  %color = color(imagenOrinal,imagenBinarizada);
  %px = color(1,1,:);
  %[h,l,s] = rgb2hls(px(1),px(2),px(3));
  candidato = 0;
  for i=1:size(alimentos)(2)
     if(tam == BD_TAM(i))
      candidato = i;
     endif
    
  endfor
  alimento = alimentos(candidato); 
  
 % colorIdeal = BD_COLORES(candidato);
  %colorReal = '';
  
   %  if (h>=345) || ((h>=0) && (h<15))
    %    colorReal = 'rojo';
     %  else
      %   for j=2:size(alimentos)(2)
       %      if (h>= (grados(j)-15)) && (h< (grados(j)+15))
        %        colorReal = colores(j);
         %      endif
          %endfor
        %endif
   
  %if colorReal != colorIdeal
   %  BD_COLORES(candidato) = colorReal;    
    %endif
  
endfunction
