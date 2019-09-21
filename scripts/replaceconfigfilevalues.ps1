Param(
  [String]$userpoolid,
  [String]$userpoolclientid,
  [String]$region,
  [String]$apigateway
)

$msg = Get-Content ./upload/config.js 
$msg -Replace ("userPoolId: '*.*'","userPoolId: '$($userpoolid)'") -replace ("userPoolClientId: '*.*'","userPoolClientId: '$($userpoolclientid)'") -Replace("region: '*.*'","region: '$region'") -Replace("invokeUrl: '*.*'","invokeUrl: '$apigateway'") | Set-Content ./upload/config.js