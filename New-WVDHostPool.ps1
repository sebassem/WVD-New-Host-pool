#//TODO #16 Add parameters @sebassem


## Connect to Azure
connect-azaccount

## Create a new HostPool
New-AzWvdHostPool `
 -ResourceGroupName $resourcegroupname `
 -Name $hostPoolName `
 -WorkspaceName $workspaceName `
 -HostPoolType $HostPoolType `
 -LoadBalancerType $LoadBalancingType `
 -Location $location `
 -DesktopAppGroupName $AppGroupName

