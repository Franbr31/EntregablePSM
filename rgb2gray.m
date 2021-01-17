function gray = rgb2gray(image)
%Todo el código está documentado en el PDF DocumentaciónEntregable2.pdf

[filas, cols, canales] = size(image);
i = [1:filas];
j = [1:cols];
r=image(i,j,1);
g=image(i,j,2);
b=image(i,j,3);
gray(i,j) =  0.299*r + 0.587*g + 0.114*b;

end




