# cd | $(find /**/*$1*/ | head -n 1)
#cd | 
#	$(find / -type d -name "*PiePHP*" 2>&1 | 
#	grep -v "Permission denied" |
#	head -n 1)
cd | $(find / -type d -name "*PiePHP*" 2>&1 | grep -v "Permission denied")
