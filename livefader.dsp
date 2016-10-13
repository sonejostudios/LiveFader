declare name        "LiveFader";
declare version     "1.0";
declare author      "Vincent Rateau";
declare license     "GPL v3";
declare reference   "www.sonejo.net";




import("stdfaust.lib");

//LiveFader is a very simple stereo passive volume fader (with smooth).
//It doesn't amplify anything, the maximun level of the fader (1) is input = output.

process = fader, fader
with{
	fader = _ * slider ;
	slider = vslider("LiveFader", 1, 0, 1, 0.001) : si.smooth(0.999);
};
