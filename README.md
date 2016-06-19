# git-dotfiles

A set of dotfiles and more managed purely through git. Fork your own today!

## Getting Started

To use this dotfiles repository, simply clone the repository to your home
directory. To set up the home directory to track this repository,

```bash
$ git init
$ git remote add origin git@github.com:MurphyMarkW/git-dotfiles.git
$ git pull origin master
$ git submodule update --init --recursive
```

Since the home directory will likely not be empty, git may complain about
files that would be overwritten. If you want to preserve those files, you
should rename them or move them to another location. Once done, you can
forcefully overwrite any conflicting files by performing a

```bash
$ git reset --hard origin/master
```

*Note* that this will not affect any files that do not have corresponding
entries in the repository.

###### References:
- The git book: https://git-scm.com/book/en/v2/

## Special Considerations

Certain conventions are used by rhese dotfiles that may seem odd or confusing
when first encountered.

###### secrets
Secrets do not belong in dotfiles repositories. As much as possible, try to
prevent committing and pushing secrets to public dotfiles repositories. From
the [HashiCorp Vault](https://www.vaultproject.io/) documentation,

> A secret is anything that you want to tightly control access to,
> such as API keys, passwords, certificates, and more.

###### README.md
Since the README.md is usually rendered nicely in graphical browsers, such
as on github, this README serves a dual purpose. The first is to document
the repository and how to use it, and the second is to document a specific
set of dotfiles so that someone (e.g. yourself) coming to a home directory
can find documentation as to how the particular user has structured their
environment.

###### .gitignore
The gitignore is set to match everything (`*`) to prevent accidentally adding
files to the repo. A side effect of this is that the first tile a file is
added the `-f / --force` flag will be required. Subsequent updates to added
files are performed as normal. Because git will use the first repository that
is encountered while traversing to the root of the filesystem tree, this will
not affect any additional git repositories that exist within this repository.

## Managed Files

###### .gitconfig
Configuration options for git.

###### .config/nvim
Configuration options for NeoVim.

###### zsh
- .zshrc
- .zpreztorc
- .zshenv
- .zlogin
- .zlogout
- .zprofile
