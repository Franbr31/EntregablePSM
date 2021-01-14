%
function [R, G, B] = Canales(IN)
[filas, cols, canal] = size(IN);

%Completar por el alumno
%Crear tres imagenes de tres canales cada una R, G y B
%R solo tendra valores utiles en el canal 1
%G en el canal 2
%B en el canal 3
%Los canales que no tengan valores utiles seran 0
%Los pixeles del canal con informacion util tendran el mismo valor que 
%el pixel correspondiente de la imagen original en dicho canal


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
