STOW ?= stow
FOLDING ?= --no-folding
PACKAGES ?= alacritty bash emacs git gpg neovim ssh

all: install

install:
	$(STOW) $(FOLDING) --stow --target $(HOME) $(PACKAGES)

uninstall:
	$(STOW) $(FOLDING) --delete --target $(HOME) $(PACKAGES)
