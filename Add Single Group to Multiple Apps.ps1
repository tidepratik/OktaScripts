Connect-Okta "OKTA API TOKEN" "https://OKTA TENANT NAME.okta.com"
# using a hash for group IDs allows easy reference in the rest of the code
$groups = @{GRPS1 = "GROUP ID"}
$activeApps = Get-OktaApps -filter 'status eq "ACTIVE"' -limit 200
$activeApps.objects | Where-Object label -like '*APPLICATION LABEL*' | 
Where-Object {
    Get-OktaAppGroups -appid $_.id -limit 200
} | ForEach-Object {
    Add-OktaAppGroup -appid $_.id -groupid $groups.GRPS1
}