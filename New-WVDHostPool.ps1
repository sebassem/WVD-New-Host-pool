


## Connect to Azure
connect-azaccount
New-AzResourceGroup -Name $resourcegroupname -Location $location
## Create a new HostPool
New-AzWvdHostPool `
 -ResourceGroupName $resourcegroupname `
 -Name $hostPoolName `
 -WorkspaceName $workspaceName `
 -HostPoolType $HostPoolType `
 -LoadBalancerType $LoadBalancingType `
 -Location $location `
 -DesktopAppGroupName $AppGroupName
