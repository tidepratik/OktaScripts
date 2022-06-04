# OktaScripts
Scripts that automate the Okta Tasks

 1. **Add Single Group to Multiple Apps :** 
If you have an group that you want to assign to multiple applications with some similarities, you can use the script
 2. **Remove De-activated users**:
 If you want to remove all of the de-activated users from Okta, you can user the script
 3. **ResetPassword**:
 In-case of emergancy, you may do the mass password reset for users and clear the sessions for them to force them to sign-in again and change their password.
 4. **RemoveGroups for Deactive Users**:
 In Okta, after users are de-activated, the groups are still tagged to them which in longer run makes it difficult to manage the group memberships and lot of clutter data remains when reviewing the group membership, Using this script you can remove the groups associated with de-activated users.

> **Note:** All of the scripts are made by using https://github.com/gabrielsroka/OktaAPI.psm1 which is not officially supported by Okta. If this scripts generates any unwanted results, we do not take any responsibility.
> Consult your Information Security team before using this.
