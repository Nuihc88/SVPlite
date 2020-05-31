##	SVPlite Heavy (For AVC/XviD Mixed Content)			##	<-- suggested usage scenario.	##
#SetMemoryMax(3072)						# Uncomment to trade startup speed for more throughput.
SetCacheMode(0)							# 0 gives slight startup boost, 1 increases throughput.
threads=8	# 2x core count gives the lowest latency on most CPUs; 1.5x gives higher throughput.
frames=16	# For lowest latency, use same value for 'present queue', 'render queue' & 'buffer'.
SetFilterMTMode("DEFAULT_MT_MODE",	2)	# Safe Default	-	Never change.
SetFilterMTMode("potplayer_source",	3)
SetFilterMTMode("ffdshow_source",	3)	# For all Source Filters use mode 3.
SetFilterMTMode("SVSuper",			1)
SetFilterMTMode("SVAnalyse",		1)	# All SVPflow Filters support mode 1.
SetFilterMTMode("SVSmoothFps",		1)
LoadPlugin("AviSynth\PlugIns\svpflow1.dll","AviSynth\PlugIns\svpflow2.dll")

#potplayer_source()
ffdshow_source()

super_params="{pel:1,gpu:1,full:false}"
analyse_params="{block:{w:32,h:16,overlap:2},main:{levels:4,
search:{distance:-9 ,type:4,satd:false,sort:true,
coarse:{distance:-21,type:2,satd:true,trymany:true,
width:960,bad:{range:-15,sad:2000}}},
penalty:{lambda:12,plevel:1.371,pnew:44,pglobal:104,pzero:128,pnbour:74}}}"
smoothfps_params="{rate:{num:2,den:1},algo:23,cubic:1,linear:false,
mask:{cover:88},scene:{mode:0,blend:false}}"

#Prefetch(1,Round(frames/8)) # Additional instances increase throughput at a slight latency cost.
super=SVSuper(last, super_params)
#Prefetch(1,Round(frames/4)) # Earlier Prefetches should be given lower loads to reduce latencies.
vectors=SVAnalyse(super, analyse_params, src=last)
#Prefetch(2,Round(frames/2)) # Dividing previous ones by 2 seems to be the performance sweet spot.
SVSmoothFps(last, super, vectors, smoothfps_params, mt=frames) # Sample scripts use 'threads' here, but using 'frames' seems to refill the buffer much quicker, i didn't notice any downsides.
Prefetch(1,frames) # Higher thread count increases latency, but Prefetch to buffer size prevents Sync-drifting & frame drops with neglible overhead.
# Additional Prefetches are disabled by default because they slow frame drop/delay and seek recovery, but as such turning them on is a reliable and convenient way to determine whether your script is light enough. If not, the video will freeze while still keeping the player responsive.