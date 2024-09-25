(@(& '/home/messium/.local/bin/oh-my-posh' init pwsh --config='' --print) -join "`n") | Invoke-Expression
Invoke-Expression (& { (zoxide init powershell | Out-String) })
Import-Module posh-git
Import-Module -Name Terminal-Icons
Import-Module PSReadLine

# Set-Alias "ls -a" "Get-ChildItem . -Force"

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineOption -EditMode vi

Set-Alias -Name history -Value Get-PSReadlineHistory
# Set-PSReadLine -MaximumHistoryCount "4096" TODO: not working bad syntax or arg none exsistant
# Set-PSReadLine -HistorySavePath "$HOME/.config/powershell/ConsoleHost_history.txt"


# $MaximumHistoryCount = 4096
# $env:HOME.local/share/powershell/PSReadLine
