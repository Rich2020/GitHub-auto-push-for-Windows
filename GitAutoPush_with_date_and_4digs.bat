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
	::git commit -m "auto push"

  set year=%date:~0,4%
  set month=%date:~5,2%
  set day=%date:~8,2%

  ::commit add 4 digitals random number
  set /a num=%Random% %%9000 +1000 

  git commit -m "auto push %year%%month%%day%_%num%"
	
	::Push all changes to GitHub 
	git push
	
	::Alert user to script completion and relaunch.
	echo Complete. Relaunching...
	
	::Wait 300 seconds until going to the start of the loop.
	::Change as needed.
	TIMEOUT 2000
	
::Restart from the top.	
goto loop
