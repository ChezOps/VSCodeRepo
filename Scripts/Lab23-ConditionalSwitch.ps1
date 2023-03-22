$filePath = ""

$Data = Get-Content -Path $filePath
$Data.Count

$firstName = $Data[0]

if($firstName -eq 'George') {
    Write-Output "My name is George"
} elseif ($firstName -eq 'Steve') {
    Write-Output "My name is Steve"
} elseif ($firstName -eq 'John') {
    Write-Output "My name is John"    
} else {
    Write-Output "I don't know my name"
}

# Use a switch to return value of variable
$firstName = "Linda" # Trigger default switch
switch ($firstName) {
    "George"{
        Write-Output "My name is George"
    }
    "Steve"{
        Write-Output "My name is Steve"
    }
    "John"{
        Write-Output "My name is John"
    }
    default {
        Write-Output "I don't know my name"
    }
}

# Use a switch to review data from filePath object
## Use breaks to prevent multiple switch results triggering
switch($Data.Count) {
    {$_ -lt 2} {
        Write-Output "File has less than 2 lines"
        break
    }
    {$_ -eq 10} {
        Write-Output "File has exactly 10 lines"
        break
    }
    {$_ -lt 11} {
        Write-Output "File has less than 11 lines"
        break
    }
    default {
        Write-Output "File has 10 or more lines"
        break
    }
}
