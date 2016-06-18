# git-dotfiles

A set of dotfiles managed purely through git.

###### References:
- The git book: https://git-scm.com/book/en/v2/

## Special Considerations

Certain conventions are used by git-dotfiles that may seem odd or confusing
when first encountered. The following should be kept in mind:

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
