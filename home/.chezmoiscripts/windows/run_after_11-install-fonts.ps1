# Get the Windows font directory.
$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)

# Install the fonts into the Windows font directory.
foreach ($file in Get-ChildItem $HOME/Fonts/*.ttf) {
    $fileName = $file.Name
    # ... But only if it isn't already installed.
    if (-not(Test-Path -Path "$HOME\AppData\Local\Microsoft\Windows\Fonts\$fileName" )) {
        Get-ChildItem $file | ForEach-Object { $fonts.CopyHere($_.fullname) }
    }
}