$resGrName=(Get-AzResourceGroup | Select-Object -First 1).ResourceGroupName

Remove-AzStorageAccount -Name storageaccount2abs2024 -ResourceGroup $resGrName