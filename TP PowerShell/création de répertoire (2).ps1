 Set-location "D:\TP PowerShell\"
   $P=Import-Csv "Livraison2.csv"
   
   ForEach ($item in $P)
   
#création de répertoir en fonction des données du fichier csv livraison2   
{
  
  $Nom = $item.Nom
  $Prenom = $item.Prenom
  $path = "D:\TP PowerShell\LIVRAISON\" + $item.Nom
  If (!(test-path $path))
{
	New-Item -ItemType Directory -Force -Path $path
}

}
  
  
  
