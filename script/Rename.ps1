if (Test-Path images\*) {
    cd images
    $files = dir
    dir | Rename-Item -NewName {$_.Name+".tiff"}

    Write-Host("")
    Write-Host("Renamed the following files:")
    Write-Host("----------------------------")

    ForEach ($file in $files) {
        Write-Host($file)
    }
    Write-Host("")
    Read-Host("To exit, type 'y' then press ENTER")
} else {
    Write-Host("")
    Write-Host("!--Images directory is empty--!")
    Write-Host("")
    Read-Host("To exit, type 'y' then press ENTER")
}