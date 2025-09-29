# Dotfiles for my setup

## Stow

To be able to use these dotfiles smoothly first you need to install [GNU Stow](https://www.gnu.org/software/stow/)

### Mac

```zsh
brew install stow
```

### Windows

If you are using windows you need to install [Dploy](https://github.com/arecarn/dploy) and run

```powershell
dploy stow %package% %source-directory%
```

## Nvim

Download the executable for neovim from [Their Official Download Page](https://github.com/neovim/neovim/blob/master/INSTALL.md)

In the directory where you cloned this repo run

```zsh
stow nvim
```

This will put the files in the default config section for nvim ~/.config/nvim
