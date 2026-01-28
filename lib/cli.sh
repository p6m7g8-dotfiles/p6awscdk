# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_awscdk_cli_cmd(...)
#
#  Args:
#	... - 
#
#>
######################################################################
p6_awscdk_cli_cmd() {
  shift 0

  p6_run_code "$*"
  local rc=$?

  p6_return_code_as_code "$rc"
}

######################################################################
#<
#
# Function: p6_awscdk_cli_execute(action, stack, account_id, region, ...)
#
#  Args:
#	action -
#	stack -
#	account_id -
#	region -
#	... - 
#
#>
######################################################################
p6_awscdk_cli_execute() {
  local action="$1"
  local stack="$2"
  local account_id="$3"
  local region="$4"
  if [ $# -gt 3 ]; then
    shift 4
  elif p6_string_eq "$action" "destroy"; then
    shift 1
  else
    shift 2
  fi

  local args="--require-approval never --no-rollback"
  if p6_string_blank_NOT "$stack"; then
    args="$args --exclusively"
  else
    args="$args --all"
  fi
  if p6_string_eq "$action" "destroy"; then
    args="$args --force"
  fi

  if p6_string_blank "$account_id"; then
    p6_awscdk_cli_cmd pnpm cdk "$action" "$args" "$stack"
  else
    p6_echo pnpm cdk bootstrap aws://"$account_id"/"$region" "$@"
    if p6_string_eq "$action" "deploy"; then
      pnpm cdk bootstrap aws://"$account_id"/"$region" "$@"
    fi
  fi

  p6_return_void
}
