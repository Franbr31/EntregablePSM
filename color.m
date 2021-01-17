function color = color(imgOriginal, imgBinarizada)
  %Todo el código está documentado en el PDF DocumentaciónEntregable2.pdf
  [filas, cols, canales] = size(imgBinarizada);
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
 
  colorRepe = 1;
  for k = 1:4
     aux = k+1;
     for l=aux:size(n)(2)
        if(imgOriginal(vectorI(n(k)), vectorJ(n(k)),:) == imgOriginal(vectorI(n(l)), vectorJ(n(l)),:)) 
          colorRepe = k;
        endif 
         
       endfor
       
    endfor
  
  color = imgOriginal(vectorI(n(colorRepe)), vectorJ(n(colorRepe)),:);

  
  
  
endfunction
