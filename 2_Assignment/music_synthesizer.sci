function [x,t] = music_synthesizer(amp,f0,phase,duration)
	[x,t] =	get_continuous_sinusoid(amp,1*f0,phase,duration)
		+get_continuous_sinusoid(amp/2,2*f0,phase,duration)
		+get_continuous_sinusoid(amp/3,3*f0,phase,duration)
		+get_continuous_sinusoid(amp/4,4*f0,phase,duration)
		+get_continuous_sinusoid(amp/5,5*f0,phase,duration);
endfunction
