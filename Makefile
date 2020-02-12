default: bundle neovim dotfiles go-binaries vim-plugins

dotfiles:
	ln -s -f $(CURDIR)/bash_profile $(HOME)/.bash_profile
	ln -s -f $(CURDIR)/bash_prompt  $(HOME)/.bash_prompt

neovim: vim-plug
	ln -s -f $(CURDIR)/coc-settings.json $(HOME)/.config/nvim/coc-settings.json
	ln -s -f $(CURDIR)/init.vim          $(HOME)/.config/nvim/init.vim

ifeq (, $(shell which brew))
brew:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
brew:
endif

bundle: brew
	brew bundle

ifneq ($(wildcard ~/.local/share/nvim/site/autoload/plug.vim),) 
vim-plug:
else
vim-plug:
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

vim-plugins:
	nvim +PlugInstall +qall
	nvim "+CocInstall coc-json coc-yaml coc-html"

go-binaries:
	pushd $(HOME); GO111MODULE=on go get golang.org/x/tools/gopls@latest; popd
