##	SVPlite Medium (For 10bit HEVC Live Content)		##	<-- suggested usage scenario.	##
Import(".\AviSynth\SVPlite_Environment.avsi")

super_params="{pel:1,gpu:1,full:false}"
analyse_params="{block:{w:32,h:16,overlap:0},main:{
search:{distance:-9 ,type:4,satd:false,sort:true,
coarse:{distance:-21,type:2,satd:false,trymany:true,
width:961,bad:{range:0}}},levels:0,penalty:{lambda:0.07,
plevel:1.25,pnew:44,pglobal:104,pzero:32,pnbour:74,prev:-1}}}"
smoothfps_params="{rate:{num:2,den:1},mask:{cover:88},
algo:23,cubic:1,linear:true,scene:{mode:0,blend:false,
limits:{scene:2220,zero:4,blocks:42},luma:1}}"

Import(".\AviSynth\SVPlite_Processing.avsi")