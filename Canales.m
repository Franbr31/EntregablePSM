
function [R, G, B] = Canales(IN)
[filas, cols, canal] = size(IN);

R = IN;
R(:,:,2)=0;
R(:,:,3)=0;

G = IN;
G(:,:,1)=0;
G(:,:,3)=0;

B = IN;
B(:,:,1)=0;
B(:,:,2)=0;

end;
