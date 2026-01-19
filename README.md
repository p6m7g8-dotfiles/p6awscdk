# P6's POSIX.2: p6awscdk

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Hooks](#hooks)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

TODO: Add a short summary of this module.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Hooks

- `deps` -> `p6df::modules::p6awscdk::deps()`
- `init` -> `p6df::modules::p6awscdk::init(_module, dir)`

### Functions

#### p6awscdk

##### p6awscdk/init.zsh

- `p6df::modules::p6awscdk::deps()`
- `p6df::modules::p6awscdk::init(_module, dir)`

#### p6awscdk/lib

##### p6awscdk/lib/bootstrap.sh

- `p6_awscdk_cli_bootstrap_trust()`

##### p6awscdk/lib/cli.sh

- `code rc = p6_awscdk_cli_cmd()`
- `p6_awscdk_cli_execute(action, stack, account_id, region, ..., ..., ...)`

##### p6awscdk/lib/prompt.sh

- `str str = p6_awscdk_prompt_info()`

## Hierarchy

```text
.
├── init.zsh
├── lib
│   ├── bootstrap.sh
│   ├── cli.sh
│   └── prompt.sh
├── README.md
└── t
    └── p6_awscdk_prompt_info.t

3 directories, 6 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
