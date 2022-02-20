# SVPlite
SVPlite - Realtime-Optimized AviSynth+ Script-Templates for the SmoothVideo Project's SVPflow-filters.

Project Goal: Making SVPflow libraries more usable and accessible on older computers and portable video players.

Project's Priorities are as follows:
1. Latency - Minimizing buffer refill delays and making frame drop and seek recovery as fast and smooth as possible.
2. Quality - Balancing artefact reduction with playback smoothness, without any noticeable compromises in either.
3. Speed   - Increasing throughput to avoid underruns by making best possible use of available buffering techniques.

To use, copy and load the provided .avs scripts into your favourite AviSynth compatible player along with up-to-date versions of AviSynth+ (v3.5.2 - r3218 or newer) and SVPflow libraries (SVPflow1: v4.5.0.200 & SVPflow2: v4.3.0.160 32bit or v4.3.0.161 64bit versions are recommended).

**Default file locations should be something like:**
* AviSynth.dll > 'YourPlayerDirectory'/
* SVPlite Scripts > 'YourPlayerDirectory'/AviSynth/ *
* SVPflow > 'YourPlayerDirectory'/AviSynth/PlugIns/

For best performance i recommend using the latest 'PotPlayer' (PotPlayerMini.exe or PotPlayerMini64.exe) with CrendKing's 'AviSynth Filter' instead of internal transform filters, along with 'File Source (Async.)' for file-read buffering, 'LAV Filters' for codecs, 'AviSynth+' as frame server, 'MadVR' as Video Renderer & 'Sanear' as Audio Renderer. Check the Filters.txt file for links to recommended filter versions. I'll probably add more detailed configuration instructions and list out tweaks to apply, later...

*Note that the two .avsi files must always be included; so if you run into any problems loading them, try copy-pasting contents of the .avsi files over the corresponding Import() lines in your chosen script(s).


**Explanation about Script Versions:**
* Animation-Presets: Are for content that consists primarily of flat 2D Animation.
* Mixed-Presets: Are for content that combines Live-action, Animation, CGI, VFX, 3D, etc.
* Live-Presets: Are for content that consists primarily of Live-action footage.
* Heavy-Presets: Are for general use with recent hardware and least demanding (old) file formats.
* Medium-Presets: Are for general use with older hardware and more modern file formats.
* Light-Presets: Are for general use with ancient hardware and most demanding (new) file formats.
* UltraLight-Presets: Are recommended only for rare edge-cases where nothing else works reliably.
