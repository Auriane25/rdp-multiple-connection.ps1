# SE CONNECTER A PLUSIEURS SERVEURS WINDOWS VIA RDP ร L'AIDE D'UN SCRIPT POWERSHELL :computer:

Le but principal de ce script powershell est de permettre de se connecter sur plusieurs serveurs avec RDP. 

## ๐๐ LE SCRIPT ๐๐


```powershell
$servers=Get-Content ".\serverslist.txt"

foreach($server in $servers){

     cmdkey /generic:$server /user:"\UserName" /pass:"Password"
    
     mstsc /v: $server
    
     #to bypass the security alerts or certificate errors that has to be done manually
    
     sleep 5
    
     cmdkey /delete:$server
    }
```

QUELQUES PRECISIONS CONCERNANT LE SCRIPT
    
    
## ๐ฅ๏ธ CREATION DU FICHIER SERVEURSLIST.TXT ๐ฅ๏ธ


![image](https://user-images.githubusercontent.com/55238107/115604350-470ddf00-a2af-11eb-89f0-e6557e7afc78.png)

    
    Ce fichier contiendra les adresses IP des serveurs auxquels vous voulez vous connecter et sera appelรฉ par votre script au niveau de la ligne suivante
    
       $servers=Get-Content ".\serverslist.txt"
       
## EXECUTION DU SCRIPT
