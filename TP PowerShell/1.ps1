#créer et vérifie si fichier de log est présent
 
Start-Transcript -Append -path "D:\TP PowerShell\log.txt" -
If ((Test-Path "D:\TP PowerShell\LIVRAISON.csv") -eq $True) {Write-Host "Present"}
Else {Write-Host "Absent"}
Stop-Transcript