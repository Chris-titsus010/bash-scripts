#! /bin/bash
(
while true; do
	ffplay -nodisp -autoexit -nostats -loglevel quiet '/home/jessy/Music/Sound effects/missjirachi/MissJirachi Coucou1.mp3'
	amixer -D pulse sset Master unmute && amixer -c 0 set Master playback 100%
	ffplay -nodisp -autoexit -nostats -loglevel quiet '/home/jessy/Music/Sound effects/missjirachi/MissJirachi Coucou2.mp3'
	amixer -D pulse sset Master unmute && amixer -c 0 set Master playback 100%
	ffplay -nodisp -autoexit -nostats -loglevel quiet '/home/jessy/Music/Sound effects/missjirachi/MissJirachi Coucou3.mp3'
	amixer -D pulse sset Master unmute && amixer -c 0 set Master playback 100%
	ffplay -nodisp -autoexit -nostats -loglevel quiet '/home/jessy/Music/Sound effects/missjirachi/MissJirachi Coucou4.mp3'
	amixer -D pulse sset Master unmute && amixer -c 0 set Master playback 100%
	ffplay -nodisp -autoexit -nostats -loglevel quiet '/home/jessy/Music/Sound effects/missjirachi/MissJirachi Coucou5.mp3'
	amixer -D pulse sset Master unmute && amixer -c 0 set Master playback 100%
	ffplay -nodisp -autoexit -nostats -loglevel quiet '/home/jessy/Music/Sound effects/missjirachi/MissJirachi Coucou6.mp3'
	amixer -D pulse sset Master unmute && amixer -c 0 set Master playback 100%
	ffplay -nodisp -autoexit -nostats -loglevel quiet '/home/jessy/Music/Sound effects/missjirachi/MissJirachi Coucou7.mp3'
	amixer -D pulse sset Master unmute && amixer -c 0 set Master playback 100%
	ffplay -nodisp -autoexit -nostats -loglevel quiet '/home/jessy/Music/Sound effects/missjirachi/MissJirachi Coucou8.mp3'
	amixer -D pulse sset Master unmute && amixer -c 0 set Master playback 100%
done ) &
exit 0
