exec('/home/saqib1707/Acads/4thsem/EE210_Signals&Systems/3_Assignment/Image_Assignment/conv_2D.sci');


// You can use the function 'conv_2D.sci' to to do the convolution between two 2D-signals
// The inputs to the function are, the input image 'X' and the kernel 'H'.
// The output will be the resultant signal 'Y' after the convolution. 
// You can call this function multiple times depending on how many times you are performing the convolution.

// Below an example code is given to read an image and to find fft of the image. Also the magnitude of the fft (in logarithmic scale) is plotted   
// you can use this code for finding the 2D fft and ploting its spectrum

// get the input image
//X = imread('/home/saqib1707/Acads/4thsem/EE210_Signals&Systems/3_Assignment/Image_Assignment/Images/mypic.jpg');
X = imread('/home/saqib1707/Acads/4thsem/EE210_Signals&Systems/3_Assignment/Image_Assignment/Images/sem_ic.jpg');
X = rgb2gray(X);

//display the image
//imshow(X)

// convert to double format for performing calculations
X = im2double(X);
//imwrite(X,'/home/saqib1707/Acads/4thsem/EE210_Signals&Systems/3_Assignment/Image_Assignment/Images/sem_ic_orig.png');
//finding fft of the image 
Fin = fft(X);
Fin = fftshift(Fin);


// Now you can define the kernel H and call the convolution function here. An example is shown below
//define a kernel
H1= [1/9 1/9 1/9;1/9 1/9 1/9;1/9 1/9 1/9];   //  will produce a blur image
H2= [0 -1 0; -1 5 -1 ; 0 -1 0];               // will sharpen the image
H3= [1/16 2/16 1/16; 2/16 4/16 2/16;1/16 2/16 1/16];                // Gaussian blur
H4= [0 -1 0; -1 4 -1 ; 0 -1 0]; 

// Now call the fuction
Y = conv_2D(X,H4);
Y = conv_2D(Y,H4);
Y = conv_2D(Y,H4);
Y = conv_2D(Y,H4);
Y = conv_2D(Y,H4);
imshow(Y);
//imwrite(Y,'D:\Saksham IIT\4th Semester Curriculum\EE 210-Signal and Systems\CA3\3B_Image_Assignment\Image_Assignment\Images\Badass_H2_5.png');
imwrite(Y,'/home/saqib1707/Acads/4thsem/EE210_Signals&Systems/3_Assignment/Image_Assignment/Images/sem_ic_H4_5.png');


// You can call this function as many times you needed
Y = im2double(Y);
output = fft(Y);
output = fftshift(output);
//plot of magnitude spectrum
Fin3 = log(abs(output));
set(gcf(),"color_map",graycolormap(128));
clf;
Fin3=flipdim(Fin3,1);
//grayplot(-229:230,-229:230,Fin3');
grayplot(-192:192,-143:142,Fin3');
// title and axes properties
b = get("current_axes");
b.title.text="Magnitude Spectrum of output image ";
b.axes_visible="on";
b.tight_limits="on";
b.x_location = "bottom";
b.y_location = "left";
b.x_label.text="v";
x_label.auto_position="on";
b.y_label.text="u";
// Now you plot the output image, find its fft , and plot its magnitude spectrum here. Compare input and output in both the spatial domain and frequency domain
// While using the function 'imshow' to display the image check the data type of the image and do proper scaling to get a better display of the image. For more details enter 'help imshow' 
