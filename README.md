# SVPlite
SVPlite - Realtime-Optimized AviSynth+ Script-Templates for the SmoothVideo Project's SVPflow filters.

Project Goal: Making SVPflow libraries more usable and accessible on older computers and portable video players.

Project's Priorities are as follows:
1. Latency - Minimizing buffer refill delays and making frame drop and seek recovery as fast and smooth as possible.
2. Quality - Balancing between artefact reduction and playback smoothness, without noticeable compromises in either.
3. Speed   - Increasing throughput to avoid underruns by making best possible use of available buffering techniques.

To use, just copy and load the provided .avs scripts into your favourite AviSynth compatible player along with up-to-date versions of AviSynth+ (v3.5.2 - r3218 or newer) and the appropriate SVPflow libraries (v4.3.0.160 32bit or v4.3.0.161 64bit are recommended).

Default file locations should be something like:
AviSynth.dll > 'YourPlayerDirectory'/
SVPlite Scripts > 'YourPlayerDirectory'/AviSynth/
SVPflow > 'YourPlayerDirectory'/AviSynth/PlugIns/

For best performance i recommend using the latest 'PotPlayer' (PotPlayerMini.exe or PotPlayerMini64.exe) with 'ffdshow raw video filter' instead of internal transform filters, along with 'File Source (Async.)' for file buffering, 'LAV Filters' for codecs, 'AviSynth+' as frame server & 'MadVR' as Video Renderer. I'll probably add more detailed configuration instructions and list out tweaks to apply, later.

