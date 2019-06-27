$computers = Import-Csv "data" -Header New,  Old | Select-Object "New", "Old"

$cred = Get-Credential 

foreach ($computer in $computers)
{
    Rename-Computer -ComputerName $computer.Old -NewName $computer.New -DomainCredential ($cred) -Force
}



