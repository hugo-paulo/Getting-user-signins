Connect-MgGraph


Select-MgProfile -Name "beta"

$myusr= Get-MgUser -UserId "<user id>" -Property SignInActivity, DisplayName, Id  |  Select-Object -Property DisplayName, Id  -ExpandProperty SignInActivity 

$myusr.DisplayName
$myusr.LastSignInDateTime
$myusr.Id
