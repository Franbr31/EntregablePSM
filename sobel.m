function bordes= sobel(IN)
  %la entrada es la imagen de una fruta binarizada para que se vea su silueta
  maskGy = [-1 -2 -1; 0 0 0; 1 2 1]; 
  maskGx = [-1 0 1; -2 0 2; -1 0 1]; %%sobel
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Aplicamos m�scara Gy 
  R = imConvolve(IN, maskGy);

%Reajuste de la imagen
maximo= max(max(R));

if (maximo>255)
  RR = imRemap(R); 
  %figure();
  bordes = imConvolve(RR, maskGx);
else
  figure();
  imshow(R);
  bordes = imConvolve(R, maskGx);
 endif
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Aplicamos m�scara Gx
 
 
%Reajuste de la imagen
maximo= max(max(bordes));

if (maximo>255)
  RR = imRemap(bordes); 
  bordes= RR;
  figure();
  imshow(RR);
else
  figure();
  imshow(bordes);
endif  
endfunction
