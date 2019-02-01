#créer un dossier au nom de la date de création "(dd-mm-yyyy)" dans le dossiier SAUVEGARDE 

$date = (Get-Date).AddDays(-1).ToString("dd-MM-yyyy")
Set-Location "D:\TP PowerShell\SAUVEGARDES" 

#Vérifie la présence des dossier créer "date" et copier fichier "LIVRAISON.csv" dans dossier "date"  

If ((Test-Path "D:\TP PowerShell\SAUVEGARDES\$date") -eq $False)
{
  New-Item -Name "$date" -ItemType directory 
  Copy-Item "D:\TP PowerShell\LIVRAISON.csv" -Destination "D:\TP PowerShell\SAUVEGARDES\$date"
}