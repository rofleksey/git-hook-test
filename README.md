# Git hooks for enforcing naming conventions

## What is it

This is a collection of git hooks for private repos that activate on `git commit` and:

* Ensure that branch names satisfy `Sprint-XXXX-XX/SCD-XXXX`
* Ensure thet commit names satisfy `SCD-XXXX: Ticket name`
* Automatically prepend ticket name to commit name, if branch name is correct
    * For e.g. if you run `git commit -m "Message"` in branch `Sprint-2020-01/SCD-1337`, then commit with name `SCD-1337: Message` is created

## Usage

### Local installation

* `cd` to your git repository
* Run `wget -O - https://raw.githubusercontent.com/rofleksey/git-hook-test/master/install.sh | bash`
    * Hooks are stored in `.git/hooks`

### Global installation

* __Ensure that you have `git --version` >= 2.9__
* Clone this repository
* Move `hooks` folder to any directory of your choice
* Run `git config --global core.hooksPath /path/to/my/dir`
    * scripts do nothing when commiting to `github.com` repositories

### Ignore hooks for one particular commit

* Run `git commit` with `--no-verify` option
