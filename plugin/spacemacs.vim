" spacemacs.vim - Spacemacs keybinding brough to vim
" Maintainer:   Meitham Jamaa <http://meitham.com/>
" Version:      0.1

" emacs keybindings
inoremap <c-k> <c-o>D
inoremap <c-u> <c-o>d^

inoremap <a-Backspace> <c-o>db
" inoremap <a-d> <c-o>dw
inoremap ∂ <c-o>dw

"can't get alt-; to work so using the literal key ing the literal key instead 
" requires tpope comentary plugin
if exists(":Commentary")
    " nnoremap <a-Semicolon> :Commentary<CR> 
    nnoremap … :Commentary<CR> 
    inoremap <a-;> :Commentary<CR>
    vnoremap <a-;> :'<,'>Commentary<CR>
endif

inoremap <c-g> <esc>

" SPC f
nnoremap <silent><leader>fy :echo expand('%:p')<cr>
nnoremap <silent><leader>fs :w<cr>
nnoremap <silent><leader>fS :bufdo w<cr>
nnoremap <silent><leader>fed :e $MYVIMRC<cr>
nnoremap <silent><leader>feR :so $MYVIMRC<cr>
nnoremap <silent><leader>fel :e <C-R>=expand('%:p:h')<CR><CR>

" SPC t
nnoremap <silent><leader>tf :set colorcolumn=80<cr>
nnoremap <silent><leader>tf :set colorcolumn=80<CR> 
nnoremap <silent><leader>thh :set cursorline!<CR> 
nnoremap <silent><leader>thc :set cursorcolumn!<CR> 
nnoremap <silent><leader>tl :set wrap!<CR> 
" toggeling numbers here are slightly different than in spacemacs
nnoremap <silent><leader>tnn :set number!<CR> 
nnoremap <silent><leader>tnr :set relativenumber!<CR>

" SPC b
nnoremap <silent><leader>bb :ls<cr>
nnoremap <silent><leader>bd :bdelete<CR> 
nnoremap <silent><leader>be ggdG
nnoremap <silent><leader>bn :bnext<CR> 
nnoremap <silent><leader>bp :bprev<CR> 
nnoremap <silent><leader>br :e! %<CR>
nnoremap <silent><leader>bY gg"+yG
nnoremap <silent><leader>bw :set readonly!<CR> 

" SPC x
nnoremap <silent><leader>xdw :%s/\s\+$//<cr>:let @/=''<CR>
vnoremap <silent><leader>xdw :'<,'>s/\s\+$//<cr>:let @/=''<CR>

nnoremap <silent><leader>xls :sort<CR>
vnoremap <silent><leader>xls :'<,'>sort<CR>

if exists(":Tabular")
    " align needs tabular.vim
    vnoremap <silent><leader>xa. :'<,'>Tab /.<cr>
    vnoremap <silent><leader>xa, :'<,'>Tab /,<cr>
    vnoremap <silent><leader>xa; :'<,'>Tab /;<cr>
    vnoremap <silent><leader>xa: :'<,'>Tab /:<cr>
    vnoremap <silent><leader>xa= :'<,'>Tab /=<cr>
    vnoremap <silent><leader>xa& :'<,'>Tab /&<cr>
    vnoremap <silent><leader>xa\| :'<,'>Tab /\|<cr>
endif


" No microstate yet
nnoremap <silent><leader>n+ <C-a>
nnoremap <silent><leader>n- <C-x>

" quite
nnoremap <silent><leader>qq :qa!<CR>
nnoremap <silent><leader><Tab> :e #<CR>

if exists('g:loaded_fugitive')
    nnoremap <silent><leader>gb :Gblame<CR>
    nnoremap <silent><leader>gd :Gdiff<CR>
    nnoremap <silent><leader>gs :Gstatus<CR>
endif
