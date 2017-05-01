# AWS Convenience Scripts

A collection of KISS scripts providing functionality I found myself reinventing over & over.

## AWS-PROFILE-SWITCHER

Simple shell script to set a specific aws profile as default for tools, with inadequate aws profile support

This script modifies ~/.aws/config and ~/.aws/credentials to enable tools that do not natively support aws profiles
The default mode of this script is to modify the file structure in ~/.aws to persist a specific profile.

### Usage

Supported switches are:

```

-h or --help    : Prints this help.

-l or --list    : List available profiles

-c or --convert : to amend your aws configuration for use with this script,
                  Please note, this flag requires to also use the --profile switch, see below.

-s or --switch  : the name of the profile to activate,
                  Please note, the profile has to be present in your current aws configuration
                  in order to select it.

-r or --restore : this will undo the modifications of your aws configuration into its original state

-1 or --one-shot: This switch will run
                  1) --convert and --profile activating your selected profile
                  2) Execute any command you\'ve added post --
                  3) Run --restore undoing the modifications
```

### ToDo

* need to review sed / awk usage to correctly match in case of multiple profile sections

## CODEDEPLOY-WRAPPER

Convenience wrapper around codedeploy for automation.

1) Upload given file to s3 bucket
2) Kick Off Codedeploy
3) Return status

### Usage

```

-v | --verbose )    : Shell script debugging
-n | --name)        : Set APPLICATION_NAME (mandatory)
-g | --group)       : Set DEPLOYMENT_GROUP (mandatory)
-f | --file )       : File to upload (mandatory)
-b | --bucket)      : Bucket to upload to (mandatory)
-d | --description) : Codedeploy Deployment Description (optional)
```
