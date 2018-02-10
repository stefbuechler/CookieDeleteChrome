#CookieDeleteOfGoogleChrome
#V1.0 Create Script Stefan Buechler 10.02.2018

$Path1 = "C:\Users\"+"$env:USERNAME"+"\AppData\Local\Google\Chrome\User Data\Default\cookies" 
$Test1 = Test-Path $Path1
If($Test1 -eq "True"){Remove-Item -Force -Path $Path1}

$Path2 = "C:\Users\"+"$env:USERNAME"+"\AppData\Local\Google\Chrome\User Data\Default\Cache" 
$Test2 = Test-Path $Path2
If($Test2 -eq "True"){Get-ChildItem -Recurse -Path $Path2 | Remove-Item -Force}

$Path3 = "C:\Users\"+"$env:USERNAME"+"\AppData\Local\Google\Chrome\User Data\Default\GPUCache" 
$Test3 = Test-Path $Path3
If($Test3 -eq "True"){Get-ChildItem -Recurse -Path $Path3 | Remove-Item -Force}