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
  %n2 = rand()*tam;
  %n3 = rand()*tam;
  %n4 = rand()*tam;
  
  color = imgOriginal(vectorI(n1), vectorJ(n1),:);
  
  
  
  
  
endfunction
