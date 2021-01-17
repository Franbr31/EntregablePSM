function bordes= prewitt(IN)
  %Todo el c�digo est� documentado en el PDF Documentaci�nEntregable2.pdf

  %la entrada es la imagen de una fruta binarizada para que se vea su silueta
  maskGy = [-1 -1 -1; 0 0 0; 1 1 1];%%%M�scara de prewitt 
  maskGx = [-1 0 1; -1 0 1; -1 0 1]; 
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Aplicamos m�scara Gy 
  R = imConvolve(IN, maskGy);

  %Reajuste de la imagen

  RR = imRemap(R); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Aplicamos m�scara Gx
  bordes = imConvolve(RR, maskGx);


  %Reajuste de la imagen
  RR = imRemap(bordes); 
  bordes= RR;
  
  


endfunction
