# shellcheck shell=bash
######################################################################
#<
#
# Function: str str = p6_awscdk_prompt_info()
#
#  Returns:
#	str - str
#
#  Environment:	 CDK_DEFAULT_ACCOUNT CDK_DEFAULT_REGION CDK_DEPLOY_ACCOUNT CDK_DEPLOY_REGION
#>
######################################################################
p6_awscdk_prompt_info() {

  local str

  if ! p6_string_blank "$CDK_DEPLOY_ACCOUNT"; then
    str="cdk:\t\t  deploy=[$CDK_DEPLOY_ACCOUNT/$CDK_DEPLOY_REGION]"
  fi
  if ! p6_string_blank "$CDK_DEFAULT_ACCOUNT"; then
    str=$(p6_string_append "$str" " default=[$CDK_DEFAULT_ACCOUNT/$CDK_DEFAULT_REGION]")
  fi

  p6_return_str "$str"
}
