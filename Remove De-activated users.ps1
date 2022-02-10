#script version 1.0
#Okta API from https://github.com/gabrielsroka/OktaAPI.psm1

#Connecting to Okta API 
Connect-Okta "OKTA API TOKEN" "https://YOUR OKTA TENANT.okta.com/"
#Getting De-Activated user's llist in Objects
$page = Get-OktaUsers -filter 'status eq "DEPROVISIONED"'
$users = $page.objects
#condition in-case there are no de-activated users, print that no deactivated  users are there.
if ($null -eq $page.objects) { 
    Write-Output "No De-activated Users at  $(Get-Date)"
}
#if de-activated users are there, then action of deleting to be performed.
else {
    foreach ($user in $users) {
        Remove-OktaUser $user.id
        Write-Output "Deleted -> $($user.profile.firstName) $($user.profile.lastName)"                   
     }
}
#code ends
