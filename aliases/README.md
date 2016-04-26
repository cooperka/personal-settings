# Shell Aliases

## Usage:

You can either `source` from these files individually, or link them into your `$ZSH_CUSTOM` dir if using [Zsh](https://github.com/robbyrussell/oh-my-zsh).

If using Zsh (highly recommended!), `cd` to this directory, then:

```sh
# Linux
for file in *.zsh; do ln -s $(readlink -f $file) $ZSH_CUSTOM/$file; done

# OSX
for file in *.zsh; do ln -s $(realpath $file) $ZSH_CUSTOM/$file; done
```

If not using Zsh, add this line to your `~/.bashrc`:

```sh
source path/to/these/aliases/*.zsh
```
