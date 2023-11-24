$folder = 'C:\TEMP\ads'

$folderADS = '{0}:secret' -f $folder

New-Item $folder -Force -ItemType Directory

Set-Content $folderADS -Value 'tajnak' -Encoding UTF8