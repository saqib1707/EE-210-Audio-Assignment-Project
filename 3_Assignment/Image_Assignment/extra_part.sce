//plote of magnitude spectrum
Fin2 = log(abs(Fin));
set(gcf(),"color_map",graycolormap(128));
clf;
Fin2=flipdim(Fin2,1);
grayplot(-192:192,-142:143,Fin2');
//grayplot(-229:230,-229:230,Fin3');
// title and axes properties 
a=get("current_axes");
a.title.text="Magnitude Spectrum of Input image";
a.axes_visible="on";
a.tight_limits="on";
a.x_location = "bottom";
a.y_location = "left";
a.x_label.text="v";
x_label.auto_position="on"
a.y_label.text="u";


