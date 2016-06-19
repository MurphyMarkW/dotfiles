###### This repository is mine. There are many like it, but this one is mine.

Dotfiles repositories are used to manage, track and assist in the deployment
of personalized configurations. [A number of ways](https://dotfiles.github.io)
exist for managing dotfiles via git. As much as possible, this one tries to be
*just git* with all the good and bad that comes along with that.

## Getting Started
Setting up a new home directory to use this repository is as simple as:

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

**Note** that this will not affect any files that do not have corresponding
entries in the repository.

## Special Considerations

Certain conventions are used by these dotfiles that may seem odd or confusing
when first encountered. Please read through these if it is your first time
using these dotfiles, as they are important to know!

###### git all the way down
This style of dotfile management makes a concious decision to make the home
directory itself a git repository. This has the benefit that any file within
a subtree of the home directory can be managed by the git repository without
any special mechanism other than a simple `git add -f <file>`. Always want
that `~/src/my-special-script/foo.sh` to be present on every system? Just
add it to the repository and `git pull` to victory!

###### .gitignore
Because of the above, the gitignore is set to match everything (`*`) to prevent
accidentally adding files to the repo. A side effect of this is that the first
time a file is added the `-f / --force` flag will be required. This should add
a natural interrupt in most people's git usage since the `-f` is not usually
added to git commands by default (if you are doing that - don't!). Subsequent
updates to added files are performed as normal. Because git will use the first
repository that is encountered while traversing to the root of the filesystem
tree, this will not affect any additional git repositories that exist within
this repository.

###### secrets
From the [HashiCorp Vault](https://www.vaultproject.io/) documentation,

> A secret is anything that you want to tightly control access to,
> such as API keys, passwords, certificates, and more.

Secrets do not belong in dotfiles repositories. As much as possible, try to
prevent committing and pushing secrets to public repositories, dotfiles or
otherwise. If you believe you've done this, please review the
[documentation](https://help.github.com/articles/remove-sensitive-data/)
on how to handle removal of sensitive data.

---
###### References:
- The git book: https://git-scm.com/book/en/v2/
- GitHub does dotfiles: https://dotfiles.github.io
- Removing sensitive data from GitHub: https://help.github.com/articles/remove-sensitive-data/
