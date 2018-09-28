# dotfiles

Somewhat portable dotfiles organised via Git submodules.

## Usage

Install [GNU Stow][], then:

```bash
export DOTFILES="$HOME/dotfiles"

git clone --recurse-submodules https://github.com/tlvince/dotfiles.git "$DOTFILES"
cd ~
"$DOTFILES/init.sh"
```

[GNU Stow]: https://www.gnu.org/software/stow/


## Author

© 2013 Tom Vincent <http://tlvince.com/contact>

## License

Released under the [MIT License](http://tlvince.mit-license.org).
