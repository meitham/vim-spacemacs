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

## Graphical UI Toggles

| Key Binding |  Description
| ----------- |  -----------
| SPC t f     |  display the fill column (by default the fill column is set to 80)
| SPC t h h   |  toggle highlight of the current line (cursorline)
| SPC t h c   |  toggle highlight of the current column (cursorcolumn)
| SPC t l     |  toggle truncate lines (wrap)
| SPC t n n   |  toggle line numbers (number)
| SPC t n r   |  toggle relative line numbers (relativenumber)


## Buffers manipulation key bindings

| Key Binding |  Description
| ----------- |  -----------
| SPC TAB     | switch to alternate buffer in the current window (switch back and forth)
| SPC b b     | list available buffers (ls)
| SPC b d     | kill the current buffer (:bdelete)
| SPC b e     | erase the content of the buffer (ggdG)
| SPC b k     | kill a buffer (:bdelete and write a name of number then hit enter)
| SPC b K     | kill all buffers except the current one (:.+,$bdelete)
| SPC b M     | swap windows (ctrl+w r) rotate
| SPC b n     | switch to next buffer (:bnext)
| SPC b p     | switch to previous buffer (:bprev)
| SPC b R     | revert the current buffer - reload from disk (:e! %)
| SPC b w     | toggle read-only (writable state)
| SPC b Y     | copy whole buffer to primary clipboard (gg"+yG)


## License

Copyright (c) Meitham Jamaa.  Distributed under the same terms as Vim itself.
See `:help license`.
