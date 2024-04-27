@echo off

:ChooseDirectory:
set /p "DIR=Enter Directory that files will be downloaded at: "

IF NOT EXIST %DIR% (
	echo Not a valid directory, try again
	goto ChooseDirectory
)

cd /d %DIR%



:videoSnipper
REM FUNCTION START


set /p "URL=Enter URL here: "
set /p "START_TIME=Enter START_TIME here: "
set /p "END_TIME=Enter END_TIME here: "




REM This command runs yt-dlp, with the options specified (For example, this verison will fetch the best mp4 video available, or the best video if no mp4 available, and force a keyframe cut at specified times, on the specified video

yt-dlp -f best %URL% --download-sections "*%START_TIME%-%END_TIME%" --force-keyframes-at-cuts --concurrent-fragments 3

echo .
echo .
echo .
echo .
echo .
echo .

goto videoSnipper


