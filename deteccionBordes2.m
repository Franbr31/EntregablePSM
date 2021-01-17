function [OUT, perimetro]= deteccionBordes2(imgOriginal, imgBordes)
  
  %imshow(imgOriginal);
  [filas, cols, canales] = size(imgOriginal);
  %imgBinarizada = binarizarImagenColor(imgOriginal);
  %imgBordes = prewitt(imgBinarizada);
  %h = histogram(imgBordes,1);
  ngFondo=imgBordes(1,1);
  
  %ngBorde=1;
  %valorMax=0;
  %for i= 1: size(h)(2)
   % if(i!=ngFondo) && (h(i)>valorMax)
    %  ngBorde=i;
     % valorMax=h(i);
    
    %endif  
  %endfor
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
  
 %imshow(OUT);
   
endfunction
