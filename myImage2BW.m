function bwImage = myImage2BW(imagen, threshold)
%Todo el c�digo est� documentado en el PDF Documentaci�nEntregable2.pdf

[rows cols] = size(imagen);
bwImage = zeros(rows, cols);

bwImage = (imagen >= threshold) * 255;
end
