function normal = normaliza(IN, canal)
    %Dividir entre 255 cada pixel, usar castings para convertir a float antes de dividir
[filas,cols,canales]=size(IN);
i = [1:filas];
j = [1:cols];   
in = double(IN);
normal(i,j)=(in(i,j,canal)./255);
end
