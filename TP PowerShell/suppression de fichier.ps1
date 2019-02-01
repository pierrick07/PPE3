   #vérifie la présence des fichier .csv des livreur concerné si présent les supprime
   
   $path1 = "D:\TP PowerShell\LIVRAISON\Dormeuil\Dormeuil.csv"
   $path2 = "D:\TP PowerShell\LIVRAISON\Perrin\Perrin.csv"
   $path3 = "D:\TP PowerShell\LIVRAISON\Hubert\Hubert.csv"

   #suppression du fichier csv correspondant
    If ((Test-Path $path1) -eq $True){
        Remove-item "$path1"
        }

    If ((Test-Path $path2) -eq $True){
        Remove-item "$path2"
        }

    If ((Test-Path $path3) -eq $True){
        Remove-item "$path3"
        }

