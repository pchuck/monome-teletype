# map generic tt scripts to named scripts
device_to_git:
	mv tt11s.txt generative-2track.txt
	mv tt12s.txt generative-4track.txt
	mv tt13s.txt numeric-repeater-tracker.txt

git_to_device:
	cp generative-2track.txt tt11s.txt
	cp generative-4track.txt tt12s.txt
	cp numeric-repeater-tracker.txt tt13s.txt
