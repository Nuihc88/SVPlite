##	SVPlite - Employ Generic Cache/Buffer Management Strategies For Specific Usage-Scenarios.	##

Prefetch(1,threads)
if (!IsYV12) {last.ConvertBits(bits=8).ConvertToYV12()} # This automatically converts incompatible input formats, but might add a bit of overhead and some color information could be lost.
#clip=last # Should be unnecessary, but try uncommenting this if AviSynth+ is throwing an error.
#Prefetch(1,Ceil(frames/8)) # Additional instances increase throughput at a slight latency cost.

super=SVSuper(last, super_params)
#Prefetch(1,Ceil(frames/4)) # Earlier Prefetches should be given lower loads to reduce latencies.

vectors=SVAnalyse(super, analyse_params, src=last)
#Prefetch(2,Ceil(frames/2)) # Dividing previous ones by 2 seems to be the performance sweet spot.
#OnCPU(Ceil(cores)) # Above ones are fairly quick and don't need to have cores on standby.

SVSmoothFps(last, super, vectors, smoothfps_params, mt=cores+1) # Sample scripts use 'threads' here, but using 'frames' refills the buffer much quicker in avisynth builds prior to v3.5.2, however then frames often get processed out of sequence and are sometimes skipped while rendering under very high system loads; thus cores+1 is optimal for lowest latency.
#OnCPU(Ceil(threads)) # Above one is slower and needs cores on standby, especially with linear=true.


# Diagnostic Notes: Additional Prefetches are made generally obsolete by OnCPU Pipelines and are disabled by default because unlike OnCPU they slow frame drop/delay and seek recovery, but as such turning them on is a reliable and convenient way to determine whether your script is light enough. If not, the video will freeze while still keeping the player responsive.
OnCPU(frames) #  # Older AviSynth versions don't support these pipelines, but they make quite a difference. For lower latency at the cost of some throughput, disable this one and enable the other two above. 
Prefetch(1,frames) # Higher thread count increases latency, but Prefetch to buffer size prevents Sync-drifting & frame drops with neglible overhead.
