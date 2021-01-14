function normal = normaliza(px)
    %Dividir entre 255 cada pixel, usar castings para convertir a float antes de dividir
  
in = double(px);
normal =(in/255);
end
