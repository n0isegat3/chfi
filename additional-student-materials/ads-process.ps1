$exe = 'C:\Windows\system32\mspaint.exe'
$hiddenexe = 'C:\TEMP\calc.txt'

$hiddenexeads = '{0}:EXE' -f $hiddenexe


New-Item $hiddenexe -ItemType file

$sourcebytes = [system.io.file]::ReadAllBytes($exe)

Set-Content -Path $hiddenexe -Value 'kalkulacka' -Encoding UTF8

Set-Content -Path $hiddenexeads -Value $sourcebytes -Encoding Byte


(gwmi -list win32_process).create($hiddenexeads)
