##	SVPlite - Employ Generic Cache/Buffer Management Strategies For Specific Usage-Scenarios.	##

#clip=last # Should be unnecessary, but try uncommenting this if AviSynth+ is throwing an error.

#Prefetch(1,Ceil(frames/8)) # Additional instances increase throughput at a slight latency cost.

super=SVSuper(last, super_params)

#Prefetch(1,Ceil(frames/4)) # Earlier Prefetches should be given lower loads to reduce latencies.

vectors=SVAnalyse(super, analyse_params, src=last)

#Prefetch(2,Ceil(frames/2)) # Dividing previous ones by 2 seems to be the performance sweet spot.

SVSmoothFps(last, super, vectors, smoothfps_params, mt=frames) # Sample scripts use 'threads' here, but using 'frames' seems to refill the buffer much quicker, i didn't notice any downsides.

OnCPU(frames)

Prefetch(1,frames) # Higher thread count increases latency, but Prefetch to buffer size prevents Sync-drifting & frame drops with neglible overhead.
