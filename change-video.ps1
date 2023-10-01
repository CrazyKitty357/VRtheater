$GodotFolder = "YOUR_FOLDER_HERE"
$GodotEXE = "YOUR_GODOT_EXE"
$oldURL = Get-Content "video-url.txt" -ErrorAction SilentlyContinue
if ($null -eq $oldURL) {
    $oldURL = "[N/A]"
}
# Check if "video.webm" file exists and delete it if it does
if (Test-Path "video.webm") {
    Write-Host "Previous Video: $oldURL"
    Write-Host "Do you want to play the previously downloaded video? [Y/N]: " -NoNewLine
    $play = Read-Host 
    if ($play -eq "y") {
        Start-Process -FilePath "$GodotFolder\Godot.exe" -ArgumentList "-d --xr-mode on"
        break
    }
    Write-Host "Deleting previous video"
    Remove-Item "video.webm"
}
# Prompt user for video URL
Clear-Host
Write-Host "Previous Video: $oldURL"
$url = Read-Host "Enter video url"
$url | Out-File -FilePath .\video-url.txt

# Download the video using yt-dlp
yt-dlp -o "video.webm" -f "(mp4 [height<=720])" $url

# Check if "video.ogv" file exists and delete it if it does
if (Test-Path "video.ogv") {
    Write-Host "Deleting previous converted video"
    Remove-Item "video.ogv"
}

# Convert video using ffmpeg
ffmpeg -hwaccel dxva2 -i "video.webm" -q:v 6 -q:a 6 "video.ogv"
$url | Out-File -FilePath .\video-url.txt
# Run Godot
Start-Process -FilePath "$GodotFolder\$GodotEXE" -ArgumentList "-d --xr-mode on"