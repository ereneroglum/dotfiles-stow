STOW ?= stow
PACMAN ?= pacman
FOLDING ?= --no-folding
PACKAGES ?= alacritty bash emacs git gpg mpv neovim rustup ssh

all: install

install:
	$(STOW) $(FOLDING) --stow --target $(HOME) $(PACKAGES)

uninstall:
	$(STOW) $(FOLDING) --delete --target $(HOME) $(PACKAGES)

explicit-update:
	$(PACMAN) -Qe > explicit-installed.txt

installed-update:
	$(PACMAN) -Qe > installed.txt
