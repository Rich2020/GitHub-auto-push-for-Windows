# Infinite loop  
while ($true) {  
    # Switch to the directory where the script is located (if needed)  
    # cd $PSScriptRoot  
  
    # Add all changed files in the current directory to the staging area  
    git add --all .  
  
    # Get the current date and time  
    $now = Get-Date  
    $year = $now.Year  
    $month = $now.Month.ToString("D2")  
    $day = $now.Day.ToString("D2")  
  
    # Generate a 4-digit random number  
    $num = (Get-Random -Minimum 1000 -Maximum 9999)  
  
    # Commit changes with a message formatted as "auto push YYYYMMDD_randomnumber"  
    git commit -m "auto push $year$month$day_$num"  
  
    # Push changes to GitHub  
    git push  
  
    # Notify the user that the script has completed and will relaunch  
    Write-Host "Complete. Relaunching..."  
  
    # Wait for 900 seconds (15 minutes)  
    Start-Sleep -Seconds 900  
}