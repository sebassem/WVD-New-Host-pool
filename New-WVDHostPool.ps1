# //TODO #2 Add parameters @sebassem

## Connect to Azure
connect-azaccount
## Create a new HostPool
New-AzWvdHostPool `
 -ResourceGroupName "RG-WVD-NewHostPool" `
 -Name "WVD-Hostpool1" `
 -WorkspaceName "WVD-Workspace1" `
 -HostPoolType "Pooled" `
 -LoadBalancerType "BreadthFirst" `
 -Location eastus `
 -DesktopAppGroupName "WVD-AppGroup1"