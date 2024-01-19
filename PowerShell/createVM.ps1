Connect-AzAccount
$resGrName=(Get-AzResourceGroup | Select-Object -First 1).ResourceGroupName
New-AzVM -ResourceGroupName $resGrName -Name "testvm-eus-02" -Credential (Get-Credential) -Location "eastus" -Image Canonical:0001-com-ubuntu-server-focal:20_04-lts:latest -OpenPorts 22 -PublicIpAddressName "testvm-eus-01" 
# vendos username dhe password:
