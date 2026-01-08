# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_awscdk_cli_bootstrap_trust()
#
#>
######################################################################
p6_awscdk_cli_bootstrap_trust() {
  local action="$1"
  local account_id="$2"
  local region="$3"
  local trust_account_id="$4"

  p6_awscdk_cli_execute "$action" "" "$account_id" "$region" --trust "$trust_account_id" --trust-for-lookup "$trust_account_id" --cloudformation-execution-policies arn:aws:iam::aws:policy/AdministratorAccess

  p6_return_void
}
