##	SVPlite - Set Environmental Variables To Apply Platform-Specific Performance Optimizations.	##

#SetMemoryMax(3072)						# Uncomment to trade startup speed for more throughput.
SetCacheMode(0)							# 0 gives slight startup boost, 1 increases throughput.
cores=4		# This is for slightly improved compatibility with hyperthreaded CPUs.
threads=8	# 2x core count gives the lowest latency on most CPUs; 1.5x gives higher throughput.
frames=16	# For lowest latency, use same value for 'present queue', 'render queue' & 'buffer'.

SetFilterMTMode("DEFAULT_MT_MODE",	2)	# Safe Default	-	Never change.
SetFilterMTMode("potplayer_source",	3)
SetFilterMTMode("ffdshow_source",	3)	# For all Source Filters use mode 3.
SetFilterMTMode("SVSuper",			1)
SetFilterMTMode("SVAnalyse",		1)	# All SVPflow Filters support mode 1.
SetFilterMTMode("SVSmoothFps",		1)
LoadPlugin("PlugIns\svpflow1.dll","PlugIns\svpflow2.dll")

#potplayer_source()
#ffdshow_source()
#AvsFilterSource()
