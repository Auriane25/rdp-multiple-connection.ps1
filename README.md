# SE CONNECTER A PLUSIEURS SERVEURS WINDOWS VIA RDP À L'AIDE D'UN SCRIPT POWERSHELL :computer:

Le but principal de ce script powershell est de permettre de se connecter sur plusieurs serveurs avec RDP. 

## LE SCRIPT 

    ```
    $servers=Get-Content ".\serverslist.txt"

    foreach($server in $servers){

        cmdkey /generic:$server /user:"\UserName" /pass:"Password"
    
        mstsc /v: $server
    
        #to bypass the security alerts or certificate errors that has to be done manually
    
        sleep 5
    
        cmdkey /delete:$server
    }
    
    ```
    
    
    
