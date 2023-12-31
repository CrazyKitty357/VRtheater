# VRtheater

this is a little project I was working on for 2 days to teach me some stuff about godot 4  
fun fact: I started making this during [LCOLONQ's](https://twitch.tv/lcolonq) stream.

## PREREQUISITES

ffmpeg | [github](https://github.com/FFmpeg/FFmpeg) [chocolatey (windows)](https://community.chocolatey.org/packages/ffmpeg) [website](https://ffmpeg.org)  
yt-dlp | [github](https://github.com/yt-dlp/yt-dlp) [chocolatey (windows)](https://community.chocolatey.org/packages/yt-dlp)  
godot 4.x | [github](https://github.com/godotengine/godot) [website](https://godotengine.org)  
a pc vr headset (***optional***) | [Valve Index](https://store.steampowered.com/valveindex), [Quest 2](https://www.meta.com/quest/products/quest-2/), [Pico neo3 link](https://www.picoxr.com/global/products/neo3-link)

## Controls
**Notice**: VR controls are not implemented  
### Keyboard  
Space = Pause/Unpause Video  
R = Restart Video  
esc = Exit Application  
F, F11, Alt+Enter = Fullscreen

### Controller
A = Pause/Unpause Video  
B = Restart Video  
Start/Plus = Exit Application  
Select/Back/Minus = Toggle Fullscreen

***Unintended control bug I will keep***  
If you pause and then restart the video the video player will dissappear.

## How to change video

Just run the included change-video.ps1(windows) or change-video.bash(linux)

**!IMPORTANT!** *(windows only)* MAKE SURE YOU CHANGE THE SCRIPT TO INCLUDE YOUR GODOT 4 INSTALL OR THE CODE WILL NOT WORK. 

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
in the godot launch options (found in lines 38 and 13 of change-videos.ps1 also found in lines 14 and 42 of change-videos.bash)