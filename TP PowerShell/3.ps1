set-location "D:\TP PowerShell"

$fichier = Import-Csv "LIVRAISON.csv" -Delimiter ";"

ForEach ($ITEM in $Fichier)
{
   $NOM = $ITEM.Livreur
   $CSV_NAME = $ITEM.commande+".csv"
   $PATH = "D:\TP PowerShell\LIVRAISON\" + $NOM
   $CSV_PATH = $PATH + "\" + $CSV_NAME

   If (!(Test-Path $PATH))
   {
      New-Item -ItemType Directory -Force -PAth $PATH
   }
   If (!(Test-Path $CSV_PATH))
   {
      New-Item -Itemtype File -Force -Path $CSV_PATH
    "Livreur`tAdresse`tCommande`tDAte" >> $CSV_PATH
    $ITEM.Livreur + "`t" + $ITEM.Adresse + "`t" + $ITEM.Commande + "`t" + $ITEM.Date >> $CSV_PATH
    }
}

# Vérifie et créer les dossiers et les fichiers .csv correspondant au livreur et les places dans les dossier correspondant du livreur concerné 