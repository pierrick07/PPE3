#cr�er et v�rifie si fichier de log est pr�sent
 
Start-Transcript -Append -path "D:\TP PowerShell\log.txt" -
If ((Test-Path "D:\TP PowerShell\LIVRAISON.csv") -eq $True) {Write-Host "Present"}
Else {Write-Host "Absent"}
Stop-Transcript