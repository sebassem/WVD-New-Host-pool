$computerName = [System.Net.Dns]::GetHostByName(($env:computerName)).hostname
$body=@{
    drainmodeStatus = 'Enable'
    hostpoolName = 'cmhostpool1'
    resourcegroupName = 'cm-hostpool1'
    sessionHostName = $computerName
}

$json = $body | ConvertTo-Json
$response = Invoke-RestMethod -Uri "https://wvd-function.azurewebsites.net/api/set-drainMode?code:<function key>" -Body $json -ContentType 'application/json' -Method 'POST'

"Started update | $(get-date -Format HH:mm:ss:ms)" | Out-File -Append filepath c:\orchestration.log
return 0
