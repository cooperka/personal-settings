# Shell Aliases

## Usage:

You can either `source` from these files individually,
or link them into your `$ZSH_CUSTOM` dir.

`cd` to this dir, then:

```sh
# Or use `realpath` on OSX
for file in *.zsh; do ln -s `readlink -f $file` $ZSH_CUSTOM/$file; done
```
