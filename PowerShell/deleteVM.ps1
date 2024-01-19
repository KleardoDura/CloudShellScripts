$vm= (Get-AzVM | Select-Object -First 1)
$name=$vm.Name
$resGr=$vm.ResourceGroupName
Stop-AzVM -Name $name -ResourceGroupName $resGr
$vm | Remove-AzNetworkInterface -Force

Get-AzDisk -ResourceGroupName $vm.ResourceGroupName -DiskName $vm.StorageProfile.OSDisk.Name | Remove-AzDisk -Force
Get-AzVirtualNetwork -ResourceGroupName $vm.ResourceGroupName | Remove-AzVirtualNetwork -Force
Get-AzNetworkSecurityGroup -ResourceGroupName $vm.ResourceGroupName | Remove-AzNetworkSecurityGroup -Force
Get-AzPublicIpAddress -ResourceGroupName $vm.ResourceGroupName | Remove-AzPublicIpAddress -Force