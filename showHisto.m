%%
function showHisto(h,niveles)
if nargin<2
	niveles=256;
	h=h(1:niveles);
else
  niveles = niveles + 1;
endif
x=[1:niveles];
bar(x,h,0.1);
axis([1 niveles]);
if(niveles == 256)
  colormap(gray(255));
else
  colormap(hsv(360));
endif
colorbar ( "location", "SouthOutside", "xtick", []);

end;
