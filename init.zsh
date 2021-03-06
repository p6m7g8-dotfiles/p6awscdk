
######################################################################
#<
#
# Function: p6df::modules::p6awscdk::deps()
#
#>
######################################################################
p6df::modules::p6awscdk::deps() { 
	ModuleDeps=(p6m7g8-dotfiles/p6common) 
}

######################################################################
#<
#
# Function: p6df::modules::p6awscdk::init()
#
#>
######################################################################
p6df::modules::p6awscdk::init() { }

######################################################################
#<
#
# Function: p6_awscdk_prompt_info()
#
#  Returns:
#	str - str
#
#>
######################################################################
p6_awscdk_prompt_info() {

    local str

    if ! p6_string_blank "$CDK_DEPLOY_ACCOUNT"; then
      str="cdk:      deploy=[$CDK_DEPLOY_ACCOUNT/$CDK_DEPLOY_REGION]"
    fi
    if ! p6_string_blank "$CDK_DEFAULT_ACCOUNT"; then
      str=$(p6_string_append "$str" " default=[$CDK_DEFAULT_ACCOUNT/$CDK_DEFAULT_REGION]")
    fi

    if p6_string_blank "$str"; then
	p6_return_void
    else
	p6_return_str "$str"
    fi
}
