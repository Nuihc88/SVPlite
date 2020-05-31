# SVPlite
SVPlite - Realtime-Optimized AviSynth+-Script Templates for the SmoothVideo Project's SVPflow filters.

Project Goal: Making SVPflow libraries more usable and accessible on older computers and portable video players.

Project's Priorities are as follows:
1. Latency - Minimizing buffer refill delays and making frame drop and seek recovery as fast and smooth as possible.
2. Quality - Balancing between artefact reduction and playback smoothness, without noticeable compromises in either.
3. Speed   - Increasing throughput to avoid underruns by making best possible use of available buffering techniques.

To use, just copy and load the provided .avs scripts into your favourite AviSynth compatible player along with up-to-date versions of AviSynth+ (r3218 or newer) and the appropriate SVPflow libraries (v4.3.0.160 32bit or v4.3.0.161 64bit are recommended).

AviSynth.dll > 'YourPlayerDirectory'/

SVPlite Scripts > 'YourPlayerDirectory'/AviSynth/

SVPflow > 'YourPlayerDirectory'/AviSynth/PlugIns/

For best performance i recommend using the newest 'PotPlayer' (PotPlayerMini.exe or PotPlayerMini64.exe) with internal transform filters disabled, along with 'File Source (Async.)' reader, 'LAV Filters' codecs, 'ffdshow raw video filter', 'AviSynth+' frame server & 'MadVR Video Renderer'. I'll probably add more detailed configuration instructions and list out tweaks to apply later.
