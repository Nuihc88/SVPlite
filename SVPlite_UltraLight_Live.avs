##	SVPlite UltraLight (For 8k+ 12bit AV1 Live Content)		##	<-- suggested usage scenario.	##
Import(".\AviSynth\SVPlite_Environment.avsi")

super_params="{pel:1,gpu:1,full:false}"
analyse_params="{block:{w:32,h:32,overlap:0},main:{
search:{distance:-0 ,type:4,satd:false,sort:false,
coarse:{distance:-15,type:2,satd:false,trymany:false,
width:241,bad:{range:0}}},levels:0,penalty:{lambda:3.3,
plevel:1.25,pnew:44,pglobal:104,pzero:32,pnbour:74,prev:-1}}}"
smoothfps_params="{rate:{num:2,den:1},mask:{cover:88},
algo:23,cubic:1,linear:false,scene:{mode:0,blend:false,
limits:{scene:2500,zero:5,blocks:33},luma:1}}"

Import(".\AviSynth\SVPlite_Processing.avsi")