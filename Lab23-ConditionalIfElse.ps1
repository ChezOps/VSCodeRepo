1 -eq 2 #Equals
1 -lt 2 #Less than
2 -le 1 #Less or Equal to
2 -gt 2 #Greater than
2 -ge 1 #Greater or equal to
1 -ne 2 #Not equal

@(1,2,3) -contains 3
@('Test','test') -contains 'TEST'
# ccontains case sensitive
@('Test','test') -ccontains 'TEST'

'test' -eq 'TEST'
'test' -ceq 'TEST'

$filePath = ""
if(Test-Path -Path $filePath) {
    $Data = Get-Content -Path $filePath
    if($Data.Count -lt 1){
        Write-Output "This file has less than 2 lines"
    }
    elseif ($Data.Count -eq 1) {
        Write-Output "This file has 1 line"
    }
} 
else {
    Write-Output "File `"$filePath`" does not exist!"
}