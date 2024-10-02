# apagatempwin
# # Define the path to the Temp folder
$tempPath = "$env:TEMP"

# Remove all files and folders in the Temp folder silently
Remove-Item -Path "$tempPath\*" -Recurse -Force -ErrorAction SilentlyContinue

# Create a log file with the current date and "clean, by yimc"
$logFileName = "$(Get-Date -Format 'yyyy-MM-dd')_clean_by_yimc.txt"
$logFilePath = "$env:USERPROFILE\Desktop\$logFileName"

# Write a confirmation message to the log file
"Temp folder cleaned on $(Get-Date)" | Out-File -FilePath $logFilePath

# Optional: Display a message to the user (can be removed for complete silence)
Write-Output "Temp folder cleaned. Log file created at $logFilePath"

