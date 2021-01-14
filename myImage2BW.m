function bwImage = myImage2BW(imagen, threshold)
[rows cols] = size(imagen);
bwImage = zeros(rows, cols);

% [c] Recorrer la imagen pixel a pixel y si el valor es mayor al umbral se asigna el valor 255
% Las imágnes a crear tienen que tener valores enteros. No olviden poner el casting
% Nota: Se puede hacer en una linea de codigo.
bwImage = (imagen >= threshold) * 255;
end
