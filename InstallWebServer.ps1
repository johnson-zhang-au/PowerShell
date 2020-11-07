param ($customerName)

Install-WindowsFeature -name Web-Server -IncludeManagementTools
$iisStartFile = "C:\inetpub\wwwroot\iisstart.htm"
if (Test-Path $iisStartFile )
{
remove-item  $iisStartFile -ErrorAction Ignore
}
$content = "Greeting from " + $env:computername + ". We love Dtex! From " + $customerName
Add-Content -Path $iisStartFile  -Value $content
