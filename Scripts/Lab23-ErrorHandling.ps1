$ErrorActionPreference = "Stop"

try{
    $filePath = "C:\Users\Aidan Chessari\Desktop\VSCodeRepo\Scripts1"
    $files = Get-ChildItem -Path $filePath -ErrorAction Stop
    $files.foreach({
        Write-Output $_.name
    })
} catch{
    Write-Output $_.Exception.Message 
} finally {
    Write-Output "This will always run"
}

# Error handling using an array
$Error[0]

