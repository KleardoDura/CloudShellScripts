
$subId=(Get-AzSubscription | Select-Object -Index 1).Id 
$context=Get-AzSubscription -SubscriptionId $subId
Set-AzContext $context
$resGrName=(Get-AzResourceGroup | Select-Object -First 1).ResourceGroupName
Set-AzDefault -ResourceGroupName $resGrName
#ka errore
$templateFile="azuredeploy.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="blanktemplate2-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile