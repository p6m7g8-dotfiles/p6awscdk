#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    . ./init.zsh
    p6_bootstrap "."

    p6_test_setup "1"

    p6_test_start "p6awscdk"
    (
        p6_test_run "p6_awscdk_prompt_info"
        p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
