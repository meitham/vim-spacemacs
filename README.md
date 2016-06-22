# vim-spacemacs

For those days when emacs lets you down and you have to drop back to vim.  This
plugin attempts to bring spacemacs keybinding back into vim.

For best results, map your leader to `<Space>`

    let mapleader=" "
    
You could also set `,` as your major mode leader

    let maplocalleader=","

## Installation

### Vundle

Add this line to your `.vimrc`:

	Plugin 'meitham/vim-spacemacs'

Then run:

	:PluginInstall

### Pathogen

	git clone https://github.com/meitham/vim-spacemacs.git ~/.vim/bundle/vim-spacemacs
    
## Dependecies

This plugin can safely function on its own, but some extra features can be enabled using
3rd party plugins.

### tpope/vim-commentary
  spacemacs default commenting are based on this plugin, so `gc` on selections or objects.
  `alt+;` as in the default comment operator in emacs is also accessible through this plugin.

### tpope/vim-fugitive
  `git blame`, `git diff` and `git status` are provided through fugitive
  
### godlygeek/tabular
  all text aligning commands are available through `Tab` from this plugin.


## License

Copyright (c) Meitham Jamaa.  Distributed under the same terms as Vim itself.
See `:help license`.
