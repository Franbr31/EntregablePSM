function bordes= prewitt(IN)
  %la entrada es la imagen de una fruta binarizada para que se vea su silueta
  maskGy = [-1 -1 -1; 0 0 0; 1 1 1];%%%en el caso de prewitt 
  maskGx = [-1 0 1; -1 0 1; -1 0 1]; 
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Aplicamos máscara Gy 
  R = imConvolve(IN, maskGy);

%Reajuste de la imagen
maximo= max(max(R));

%if (maximo>255)%[c] Insertar la codicion para reajustar
  RR = imRemap(R); 
  %figure();
  bordes = imConvolve(RR, maskGx);
%else
  %figure();
  %imshow(R);
  %bordes = imConvolve(R, maskGx);
 %endif
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Aplicamos máscara Gx
 
 

%Reajuste de la imagen
%maximo= max(max(bordes));

%if (maximo>255)%[c] Insertar la codicion para reajustar
  RR = imRemap(bordes); 
  bordes= RR;
  figure();
  imshow(bordes);
%else
%  figure();
%  imshow(bordes);
%endif  


endfunction
