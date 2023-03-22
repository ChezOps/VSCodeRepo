$serviceName = "Spooler"
Get-Service -Name $serviceName
Start-Service -Name $serviceName
Get-Service -Name $serviceName | Stop-Service

# Create an Array List for multiple services
$services = New-Object -TypeName System.Collections.ArrayList
$services.AddRange(@('spooler','w32time'))

$services | Get-Service

# Use the pipeline to return output for the service status of the Array List
$services | Get-Service | ForEach-Object {Write-Output "Service: $($_.displayname) is currently $($_.status)"}