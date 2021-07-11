using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

#Login to Azure using managed identity
connect-azaccount -identity

#initialize variables
$drainmodeStatus = $Request.Body.drainmodeStatus
$hostpoolName = $Request.Body.hostpoolName
$resourcegroupName = $Request.Body.resourcegroupName
$sessionhostName = $Request.Body.sessionhostName

if($drainmodeStatus -eq 'Enable'){
    $body = update-azwvdsessionhost -name $sessionhostName -resourcegroupname $resourcegroupName -hostpoolname $hostpoolName -allownewsession:$true
}
elseif($drainmodeStatus -eq 'Disable'){
    $body = update-azwvdsessionhost -name $sessionhostName -resourcegroupname $resourcegroupName -hostpoolname $hostpoolName -allownewsession:$false

}

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = [HttpStatusCode]::OK
    Body = $body
})
