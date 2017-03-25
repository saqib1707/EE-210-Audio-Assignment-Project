exec('get_continuous_sinusoid.sci');
exec('music_synthesizer.sci');

// You can use the function 'get_continuous_sinusoid' to obtain an array of values of the continuous time sinusoid
// The inputs to the function will be the signal amp 'a'(from 0 to1), fundamental frequency 'F0'(100 to 4000 Hz), phase 'phi'(in radians) and duration 'T'(in ms) 
// The outputs will be the values 'y' of the sinusoid & their time indices 't'
// You could call this function multiple times and add the different sinusoids. Finally you can plot, play the resulting signal.


max_amp = 1.8;
phi = %pi/4;

a1 = music_synthesizer(max_amp,262,phi,200);
a2 = music_synthesizer(max_amp,294,phi,200);
a3 = music_synthesizer(max_amp,330,phi,1000);
a4 = music_synthesizer(max_amp,294,phi,400);
a5 = music_synthesizer(max_amp,392,phi,800);
a6 = music_synthesizer(max_amp,349.23,phi,200);
a7 = music_synthesizer(max_amp,330,phi,200);
a8 = music_synthesizer(max_amp,262,phi,800);
a9 = music_synthesizer(max_amp,220,phi,800);
a10 = music_synthesizer(max_amp,196,phi,1200);

a11 = music_synthesizer(max_amp,392,phi,200);
a12 = music_synthesizer(max_amp,440,phi,800);
a13 = music_synthesizer(max_amp,294,phi,1600);

a14 = music_synthesizer(max_amp,262,phi,600);
a15 = music_synthesizer(max_amp,262,phi,400);
a16 = music_synthesizer(max_amp,247,phi,400);
a17 = music_synthesizer(max_amp,330,phi,800);
a18 = music_synthesizer(max_amp,294,phi,800);
a19 = music_synthesizer(max_amp,196,phi,3200);

a20 = music_synthesizer(max_amp,262,phi,1600);
a21 = music_synthesizer(max_amp,294,phi,1200);
a22 = music_synthesizer(max_amp,196,phi,400);
a23 = music_synthesizer(max_amp,349.23,phi,400);
a24 = music_synthesizer(max_amp,330,phi,400);
a25 = music_synthesizer(max_amp,220,phi,1600);
a26 = music_synthesizer(max_amp,196,phi,1600);
a27 = music_synthesizer(max_amp,330,phi,1200);



y1 = cat(2,a1,a2,a2,a3,a2,a1,a4,a5,a6,a7,a8,a9,a10);

y2 = cat(2,a1,a2,a2,a3,a2,a1,a4,a5,a7,a11,a12,a13);

y3 = cat(2,a14,a1,a15,a15,a16,a8,a15,a16,a8,a4,a17,a18,a14,a1,a15,a15,a16,a8,a15,a19);

y4=y3;

y5 = cat(2,a20,a21,a22,a5,a23,a24,a18,a24,a23,a27,a2,a1,a16,a8,a16,a25,a26);

y = cat(2,y1,y2,y3,y4,y5);

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
wavwrite(y,10000,"song2_music_synthesizer.wav");
