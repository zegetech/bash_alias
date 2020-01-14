## Quick Bash aliases.
A list of aliases of commonly used bash commands and Functions

## Clone
Clone in `.aliases` directory in your home.

```sh
git clone git@github.com:gathuku/bash_alias.git
```
## Try em out
To try them out, 
Enable bash aliases in terminal by running the command:

```sh
source bash_alias/bash_aliases.sh
```
Enable bash functions in terminal by running the command:

```sh
source bash_alias/bash_functions.sh
```
## Installation
To install them on your system so that they are available whenever you load a terminal, run the following:

```sh
cd bash_alias
mv bash_aliases.sh ~/.bash_aliases
mv bash_functions.sh ~/.bash_functions
```

Then add the following in `~/.bashrc` or `~/.bash_profile`, or other terminal profile file
```sh
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi
```