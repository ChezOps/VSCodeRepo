$filePath = "C:\Users\Aidan Chessari\Desktop\VSCodeRepo\FileShare\FolderNames.txt"
$folderPath = "C:\Users\Aidan Chessari\Desktop\VSCodeRepo\FileShare"
$folderNames = Get-Content -Path $filePath

New-Item -Path $folderPath -Name $folderNames[0] -ItemType Directory

# Method 1
foreach($name in $folderNames) {
    if((Test-Path -Path "$folderPath\$name") -eq $false){
        New-Item -Path "$folderPath" -Name $name -ItemType Directory
} else {
    Write-Output "Folder "$name" already exists"
    }
}

# Method 2
$folderNames | ForEach-Object -Process {
    if((Test-Path -Path "$folderPath\$_") -eq $false){
        New-Item -Path "$folderPath" -Name $_ -ItemType Directory
} else {
    Write-Output "Folder "$_" already exists"
    }
} 

# Method 3
$folderNames.ForEach( {
    if((Test-Path -Path "$folderPath\$_") -eq $false){
        New-Item -Path "$folderPath" -Name $_ -ItemType Directory
} else {
    Write-Output "Folder "$_" already exists"
    }
}
)