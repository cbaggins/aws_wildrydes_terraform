Param(
  [String]$userpoolid,
  [String]$userpoolclientid,
  [String]$region,
  [String]$apigateway
)

(Get-Content ./upload/config.js).Replace("userPoolId: ''","userPoolId: '$($userpoolid)'").Replace("userPoolClientId: ''","userPoolClientId: '$($userpoolclientid)'").Replace("region: ''","region: '$region'").Replace("invokeUrl: ''","invokeUrl: '$apigateway'") | Set-Content ./upload/config.js