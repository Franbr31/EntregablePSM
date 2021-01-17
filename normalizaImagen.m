function normal = normalizaImagen(IN, canal)
    
[filas,cols,canales]=size(IN);
i = [1:filas];
j = [1:cols];   
in = double(IN);
normal(i,j)=(in(i,j,canal)./255);
end
