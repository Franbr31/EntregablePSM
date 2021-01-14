function [h, l, s] = rgb2hls(r,g,b)

pixel = [r, g, b];

%Implementar el algoritmo visto en clase

max = max(pixel);
min = min(pixel);
l=(max+min)/2;

if(max==min)
   s = 0;
   h = -1000;
elseif(l<=0.5)
  s = (max-min)/(2*l);
else
  s = (max-min)/(2-2*l);
endif

if(max==min)
  h = -1000;
elseif(max==r)
  h = 60*(g-b)/(max-min);
  if(h<0)
    h=h+360;
  endif;
elseif(max==g)
  h = 120+60*(b-r)/(max-min);
else
  h = 240+60*(r-g)/(max-min);
endif;


endfunction