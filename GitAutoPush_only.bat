:loop

  :: ! place this file to your working directory , first ! and run it keet it running ,It will works well !
  ::  2022.07.24.wood


	
	:: Navigate to the directory you wish to push to GitHub
	::Change <path> as needed. Eg. C:\Users\rich\Desktop\Writings
	::cd <path>

	
	::Add all files in the directory
	git add --all ./
	
	::Commit all changes with the message "auto push". 
	::Change as needed.
	git commit -m "auto push"
	
	::Push all changes to GitHub 
	git push
	
	::Alert user to script completion and relaunch.
	echo Complete. Relaunching...
	
	::Wait 300 seconds until going to the start of the loop.
	::Change as needed.
	TIMEOUT 300
	
::Restart from the top.	
goto loop
