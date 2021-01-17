function [OUT, perimetro]= deteccionBordes2(imgOriginal, imgBordes)
  %Todo el código está documentado en el PDF DocumentaciónEntregable2.pdf

  [filas, cols, canales] = size(imgOriginal);

  ngFondo=imgBordes(1,1);
  
  perimetro = 0;
   for i=1:filas
    for j=1:cols
      if imgBordes(i,j)==ngFondo
        OUT(i,j,1:canales)= imgOriginal(i,j,1:canales);
      else
        perimetro++;
        OUT(i,j,1:2) = 0;
        OUT(i,j,3) = 255;
        endif
    endfor
  endfor
  
   
endfunction
