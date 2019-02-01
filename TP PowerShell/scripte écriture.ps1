   Set-location "D:\TP PowerShell"

   $P = Import-Csv "LIVRAISON.csv"
   $path1 = "D:\TP PowerShell\LIVRAISON\Dormeuil\Dormeuil.csv"
   $path2 = "D:\TP PowerShell\LIVRAISON\Perrin\Perrin.csv"
   $path3 = "D:\TP PowerShell\LIVRAISON\Hubert\Hubert.csv"

   #parcour le fichier csv
   ForEach ($item in $P)
   
   

{
  
$Livreur = $item.Livreur
  
$Adresse = $item.Adresse

$Commande = $item.Commande

$Date = $item.Date

#$path = "D:\TP PowerShell\LIVRAISON\LIVRAISON3.csv"

#Write-host $Livreur " " $Adress " " $Commande " " $Date

#ecrit chaque ligne
$MyLine =  $Livreur + "," + $Adresse + "," + $Commande + "," + $Date

#envoie en fichier csv dans les dossiers correespondant
if($Livreur -eq "Dormeuil") {
add-content $path1 $MyLine
}

if($Livreur -eq "Perrin") {
add-content $path2 $MyLine
}

if($Livreur -eq "Hubert") {
add-content $path3 $MyLine
}

}

