function bwImage = myImage2BW(imagen, threshold)
%Todo el código está documentado en el PDF DocumentaciónEntregable2.pdf

[rows cols] = size(imagen);
bwImage = zeros(rows, cols);

bwImage = (imagen >= threshold) * 255;
end
