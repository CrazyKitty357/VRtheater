# VRtheater

this is a little project I was working on for 2 days to teach me some stuff about godot 4

## PREREQUISITES

ffmpeg | [github](https://github.com/FFmpeg/FFmpeg) [chocolatey (windows)](https://community.chocolatey.org/packages/ffmpeg) [website](https://ffmpeg.org)  
yt-dlp | [github](https://github.com/yt-dlp/yt-dlp) [chocolatey (windows)](https://community.chocolatey.org/packages/yt-dlp)  
godot 4.x | [github](https://github.com/godotengine/godot) [website](https://godotengine.org)  
a pc vr headset (***optional***) | [Valve Index](https://store.steampowered.com/valveindex), [Quest 2](https://www.meta.com/quest/products/quest-2/), [Pico neo3 link](https://www.picoxr.com/global/products/neo3-link)

## Controls
**Notice**: VR controls are not implemented  
Space = Pause  
Space *while paused* = Resume  
R *while paused* = Stop video (video starts again after unpausing)  
R = Restart Video  
F, F11, Alt+Enter = Fullscreen

## How to change video

Just run the included change-video.ps1

**!IMPORTANT!** MAKE SURE YOU CHANGE THE SCRIPT TO INCLUDE YOUR GODOT 4 INSTALL OR THE CODE WILL NOT WORK. 

## How to change the skybox

Replace the panorama_image.png found in the skybox folder. Make sure it is converted into a panorama before replacing the image.

## How to toggle VR

You change 
```
--xr-mode on
```
to
```
--xr-mode off
```
in the godot launch options (found in lines 38 and 13 of change-videos.ps1 also found in lines 14 and 42 of change-videos.bash