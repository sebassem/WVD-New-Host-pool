
# //TODO #4 Add the ability to accept parameters @sebassem

## Connect to Azure
connect-azaccount

##Initialize parameters
param(
[Parameter(Mandatory=$true)]
[STRING]$resourcegroupname,
[Parameter(Mandatory=$true)]
[STRING]$location,
[Parameter(Mandatory=$true)]
[STRING]$hostPoolName,
[Parameter(Mandatory=$true)]
[STRING]$workspaceName,
[Parameter(Mandatory=$true)]
[STRING]$AppGroupName,
[Parameter(Mandatory=$true)]
[STRING]$HostPoolType,
[Parameter(Mandatory=$true)]
[STRING]$LoadBalancingType
)

## Create a new HostPool
New-AzWvdHostPool `
 -ResourceGroupName $resourcegroupname `
 -Name $hostPoolName `
 -WorkspaceName $workspaceName `
 -HostPoolType $HostPoolType `
 -LoadBalancerType $LoadBalancingType `
 -Location $location `
 -DesktopAppGroupName $AppGroupName
