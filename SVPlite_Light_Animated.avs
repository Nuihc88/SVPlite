##	SVPlite Light (For 4k+ 12bit HEVC Animated Content)	##	<-- suggested usage scenario.	##
Import(".\AviSynth\SVPlite_Environment.avsi")

super_params="{pel:1,gpu:1,full:false}"
analyse_params="{block:{w:32,h:32,overlap:0},main:{
search:{distance:-6 ,type:4,satd:false,sort:false,
coarse:{distance:-15,type:2,satd:false,trymany:false,
levels:3,width:961,bad:{range:0}}},penalty:{lambda:3.3,
plevel:1.25,pnew:44,pglobal:104,pzero:240,pnbour:74,prev:-1}}}"
smoothfps_params="{rate:{num:2,den:1},mask:{cover:99},
algo:2,cubic:1,linear:false,scene:{mode:0,blend:false,
limits:{scene:2220,zero:4,blocks:42},luma:1}}"

Import(".\AviSynth\SVPlite_Processing.avsi")