function bordes= prewitt(IN)
  %Todo el código está documentado en el PDF DocumentaciónEntregable2.pdf

  %la entrada es la imagen de una fruta binarizada para que se vea su silueta
  maskGy = [-1 -1 -1; 0 0 0; 1 1 1];%%%Máscara de prewitt 
  maskGx = [-1 0 1; -1 0 1; -1 0 1]; 
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Aplicamos máscara Gy 
  R = imConvolve(IN, maskGy);

  %Reajuste de la imagen

  RR = imRemap(R); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Aplicamos máscara Gx
  bordes = imConvolve(RR, maskGx);


  %Reajuste de la imagen
  RR = imRemap(bordes); 
  bordes= RR;
  
  


endfunction
