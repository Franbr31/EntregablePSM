function R = imConvolve(image, mask)
% Image(n, m) – imagen monocromática
% Mask(n, m) – matriz con los valores de la máscara
% R(n,m)	-  Imagen resultante

image = double(image);
mask = double(mask);

[filas, cols] = size(image);
[fmask, colmask] = size(mask);

R = zeros(filas, cols, "single");


incrf = fix(fmask/2);
incrc = fix(colmask/2);

imax = filas - fmask+1;
jmax = cols - colmask+1;

for i=1:imax
  for j=1:jmax
      R(i+incrf, j+incrc) = aplicaMascara(image, i,j, mask);
  end
end
endfunction

function val = aplicaMascara(image, n, m, mask)
val = single(0);

[filas, cols] = size(mask);

for k=1:filas 
  for l=1:cols
    val = val + image(n+k-1, m+l-1) * mask(k,l);
  endfor
endfor

endfunction


