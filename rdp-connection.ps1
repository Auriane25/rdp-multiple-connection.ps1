$servers=Get-Content ".\serverslist.txt"

foreach($server in $servers){

    cmdkey /generic:$server /user:"Domain\UserName" /pass:"Password"
    
    mstsc /v: $server
    
    #to bypass the security alerts or certificate errors that has to be done manually
    
    sleep 5
    
    cmdkey /delete:$server
}
