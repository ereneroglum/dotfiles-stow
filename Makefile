STOW ?= stow
PACMAN ?= pacman
FOLDING ?= --no-folding
PACKAGES ?= alacritty \
	bash \
	emacs \
	flutter \
	git \
	gpg \
	mpv \
	rust \
	ssh
	# neovim
	# helix

all: install

install:
	$(STOW) $(FOLDING) --stow --target $(HOME) $(PACKAGES)

uninstall:
	$(STOW) $(FOLDING) --delete --target $(HOME) $(PACKAGES)

explicit-update:
	$(PACMAN) -Qe > explicit-installed.txt

installed-update:
	$(PACMAN) -Q > installed.txt

foreign-update:
	$(PACMAN) -Qm > foreign.txt
