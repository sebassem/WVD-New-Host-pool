New-AzWvdHostPool `
 -ResourceGroupName "RG-WVD-NewHostPool" `
 -Name "WVD-Hostpool1" `
 -WorkspaceName "WVD-Workspace1" `
 -HostPoolType "Pooled" `
 -LoadBalancerType "BreadthFirst" `
 -Location eastus `
 -DesktopAppGroupName "WVD-AppGroup1"