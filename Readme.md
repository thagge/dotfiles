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

Default config placement ~/.config/nvim

Download the executable for neovim from [Their Official Download Page](https://github.com/neovim/neovim/blob/master/INSTALL.md)

In the directory where you cloned this repo run

```zsh
stow nvim
```

For it to work on windows you must also run

```powershell
dploy stow powershell #path_to_your_documents#/Powershell
```

In order for nvim to fetch the correct config files

This will put the files in the default config section for nvim ~/.config/nvim

## Starship

Default config placement ~/.config

Follow the instruction for installation at [Their official site](https://starship.rs/)

In the directory where you cloned this repo run

<details>
<summary>Macos and Linux</summary>

```zsh
stow starship
```

</details>

<details>
<summary>Windows</summary>

```powershell
dploy stow nvim #path_to_your_user_folder#
```

</details>
