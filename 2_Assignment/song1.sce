exec('get_continuous_sinusoid.sci');
exec('music_synthesizer.sci');

// You can use the function 'get_continuous_sinusoid' to obtain an array of values of the continuous time sinusoid
// The inputs to the function will be the signal amplitude 'a'(from 0 to1), fundamental frequency 'F0'(100 to 4000 Hz), phase 'phi'(in radians) and duration 'T'(in ms) 
// The outputs will be the values 'y' of the sinusoid & their time indices 't'
// You could call this function multiple times and add the different sinusoids. Finally you can plot, play the resulting signal.


// So the code looks like this
phi = %pi/4
max_amp = 1.8

a1 = music_synthesizer(max_amp,185,phi,200);
a2 = music_synthesizer(max_amp,196,phi,200);
a3 = music_synthesizer(max_amp,220,phi,400);
a4 = music_synthesizer(max_amp,247,phi,400);
a6 = music_synthesizer(max_amp,220,phi,600);
a7 = music_synthesizer(max_amp,196,phi,200);
a8 = music_synthesizer(max_amp,185,phi,400);
a9 = music_synthesizer(max_amp,277,phi,400);
a10 = music_synthesizer(max_amp,294,phi,800);
a11 = music_synthesizer(max_amp,294,phi,400);
a12 = music_synthesizer(max_amp,330,phi,400);
a13 = music_synthesizer(max_amp,277,phi,200);
a14 = music_synthesizer(max_amp,220,phi,800);

y1 = cat(2,a1,a2,a3,a3,a4,a4,a6,a7,a8);
y2 = y1;
y3 = cat(2,a1,a2,a3,a3,a4,a9,a10);
y4 = cat(2,a11,a12,a9,a9,a4,a13,a4,a14);

y= cat(2,y1,y2,y3,y4);

// Plot the continuous time curve
clf();
plot(y);
// Axis properties
a = gca();
a.x_location = "origin";
a.y_location = "origin";


// Play the sinusoid
sound(y,10000);
//Save the sound to output.wav file
wavwrite(y,10000,"song1_music_synthesizer.wav");
