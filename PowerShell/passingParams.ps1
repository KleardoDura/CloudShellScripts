param([int]$size ,[string]$location)
Write-Output $size
For ($i=1; $i -le 3 ; $i++){
  Write-Output ("VM {0}" -f $i)
}