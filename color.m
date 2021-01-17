function color = color(imgOriginal, imgBinarizada)
   %imshow(imgOriginal);
  [filas, cols, canales] = size(imgBinarizada);
  %imgBinarizada = binarizarImagenColor(imgOriginal);
  color = imgOriginal;
  tam = areaAlimento(imgBinarizada);
  vectorI = zeros(tam);
  vectorJ = zeros(tam);
  ind = 0;
  for i=1:filas
    for j=1:cols
      if imgBinarizada(i,j) == 0
        ind++;
        vectorI(ind) = i;
        vectorJ(ind) = j;
        
        endif
    endfor
  endfor
  
  n1 = fix(rand()*tam);
  n2 = fix(rand()*tam);
  n3 = fix(rand()*tam);
  n4 = fix(rand()*tam);
  n = [n1, n2, n3, n4];
 
  colorRepe = 0;
  for k = 1:4
     aux = k+1;
     for l=aux:size(n)(2)
        if(imgOriginal(vectorI(n(k)), vectorJ(n(k)),:) == imgOriginal(vectorI(n(l)), vectorJ(n(l)),:)) 
          colorRepe = k;
        endif 
         
       endfor
       
    endfor
  
  if colorRepe != 0
  color = imgOriginal(vectorI(n(k)), vectorJ(n(k)),:);
  else
  color = imgOriginal(vectorI(n(colorRepe)), vectorJ(n(colorRepe)),:);
  
  
  
  
endfunction
