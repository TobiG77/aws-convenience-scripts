# AWS-PROFILE-SWITCHER

Simple shell script to set a specific aws profile as default for tools, with inadequate aws profile support

## Usage

Supported switches are:

```
-h or --help    : Prints this help.

-c or --convert : to amend your aws configuration for use with this script,
                  Please note, this flag requires to also use the --profile switch, see below.

-p or --profile : the name of the profile to activate,
                  Please note, the profile has to be present in your current aws configuration
                  in order to select it.

-r or --restore : this will undo the modifications of your aws configuration into its original state

-1 or --one-shot: This switch will run
                  1) --convert and --profile activating your selected profile
                  2) Execute any command you\'ve added post --
                  3) Run --restore undoing the modifications

```
## ToDo

* need to review sed / awk usage to correctly match in case of multiple profile sections
