# Dotfiles

## How to use

Configuration in this repository is made to be modular. If you do not want any parts, you can easyly remove or replace them.

Specifig configurations are written in their respective sections.

## Installing a package

You should have `gnustow` in order to install a package. You can use the given makefile to install packages or you can install them manually.

### Using Makefile

Change your working directory to root of the repository. Then edit the makefile to your liking.
For example, if you want to install package alacritty add (or uncomment) alacritty from `PACKAGES` variable. Conversely if you want to uninstall a package remove (or uncomment) specific package from `PACKAGES` variable.

After editing makefile, you are ready to deploy the configuration. Use

```bash
make install
```

to install configuration. If you want to remove configuration, then use

```bash
make uninstall
```

### Manual Method

If you want to install a specific package manually use

```bash
stow --no-folding --stow --target "$HOME" "(package name)"
```

If you want to remove a specific package use

```bash
stow --no-folding --delete --target "$HOME" "(package name)"
```

## Rust Package

Rust package is meant to be set up with rustup. If you want to install rust package install `rustup` and a `toolchain` without altering path. You can alternatively install `rustc` and `cargo` from your package manager without installing rust package.

If you are planning to use `rust-analyzer` (language server for rust), either install it from your package manager or install the `rust-analyzer` binary in `$HOME/.local/bin`.

After installing rust-analyzer you can enable rust for emacs and neovim packages by editing their configuration files.

For emacs, uncomment `(require 'libera-rust-mode)` from `.config/emacs/init.el`.

For neovim, uncomment `"rust_analyzer"` in `lspservers` from `.config/nvim/lua/libera/lspconfig.lua`

## Flutter Package

Flutter package is meant to be setup with manual installation of flutter. Install flutter sdk in `$HOME/.local/opt/flutter` when you are using the package.

Alternatively you can install flutter from your package manager.

## About Emacs

Note that when installing emacs package, it will set your `VISUAL` and `EDITOR` environment variable to `emacs`.

If you do not want that behaviour you can comment respective lines in `.config/bash-scripts/emacs.sh`.

You can comment and uncomment `(require 'libera-*)` lines to configure emacs.

## About Neovim

You can configure neovim by commenting and uncommenting lines in `.config/nvim/init.lua`.
