" spacemacs.vim - Spacemacs keybinding brough to vim
" Maintainer:   Meitham Jamaa <http://meitham.com/>
" Version:      0.1

if exists('g:loaded_spacemacs')
    finish
endif

let g:load_spacemacs = 1

" emacs keybindings
inoremap <c-k> <c-o>D
inoremap <c-u> <c-o>d^

inoremap <a-Backspace> <c-o>db
if has("mac")
    inoremap ∂ <c-o>dw
else
    inoremap <a-d> <c-o>dw
endif

inoremap <c-g> <esc>

" SPC f
nnoremap <silent><leader>fy :echo expand('%:p')<cr>
nnoremap <leader>fc :write<space>
nnoremap <silent><leader>fCd :setlocal ff=dos<cr>
nnoremap <silent><leader>fCu :setlocal ff=unix<cr>
nnoremap <silent><leader>fD :bwipeout<cr>
nnoremap <silent><leader>ff :e <c-r>=expand('%:p:h') . '/'<cr>
nnoremap <silent><leader>fF gf
nnoremap <leader>fR :saveas<space>
nnoremap <silent><leader>fs :w<cr>
nnoremap <silent><leader>fS :bufdo w<cr>
nnoremap <silent><leader>fed :e $MYVIMRC<cr>
nnoremap <silent><leader>feR :so $MYVIMRC<cr>
nnoremap <silent><leader>fel :e <C-R>=expand('%:p:h')<cr><cr>

function! Togglecolorcolumn() abort
    if &l:colorcolumn ># 0
        return 0
    elseif &l:textwidth ># 0
        return &l:textwidth
    else
        return 80
    endif
endfunction

" SPC t
nnoremap <silent><leader>tf :let &l:colorcolumn=Togglecolorcolumn()<cr>
nnoremap <silent><leader>thh :setlocal cursorline!<cr>
nnoremap <silent><leader>thc :setlocal cursorcolumn!<cr>
nnoremap <silent><leader>tl :setlocal wrap!<cr>
" toggeling numbers here are slightly different than in spacemacs
nnoremap <silent><leader>tnn :setlocal number!<cr>
nnoremap <silent><leader>tnr :setlocal relativenumber!<cr>

" SPC b
nnoremap <silent><leader>bb :ls<cr>
nnoremap <silent><leader>bd :bdelete<cr>
nnoremap <silent><leader>bk :bdelete
nnoremap <silent><leader>bK :.+,$bdelete<cr>
nnoremap <silent><leader>be ggdG
nnoremap <silent><leader>bM <c-w>r
nnoremap <silent><leader>bn :bnext<cr>
nnoremap <silent><leader>bp :bprev<cr>
nnoremap <silent><leader>bR :e! %<cr>
nnoremap <silent><leader>bY gg"+yG
nnoremap <silent><leader>bw :setlocal readonly!<cr>

" SPC x
vnoremap <silent><leader>xu u
vnoremap <silent><leader>xU U

nnoremap <silent><leader>xdw :%s/\s\+$//<cr>:let @/=''<cr>
vnoremap <silent><leader>xdw :'<,'>s/\s\+$//<cr>:let @/=''<cr>

nnoremap <silent><leader>xls :sort<cr>
vnoremap <silent><leader>xls :'<,'>sort<cr>

nnoremap <silent><leader>xlu :sort u<cr>
vnoremap <silent><leader>xlu :'<,'>sort u<cr>

nnoremap <silent><leader>xtc xp
nnoremap <silent><leader>xtw dawwp
nnoremap <silent><leader>xtl ddp

" No microstate yet
nnoremap <silent><leader>n+ <C-a>
nnoremap <silent><leader>n- <C-x>

" quite
nnoremap <silent><leader>qq :qa!<cr>
nnoremap <silent><leader><Tab> :e #<cr>

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

if exists('g:loaded_fugitive')
    nnoremap <silent><leader>gb :Gblame<cr>
    nnoremap <silent><leader>gd :Gdiff<cr>
    nnoremap <silent><leader>gs :Gstatus<cr>
endif

" requires tpope comentary plugin
if exists(":Commentary")
    if has("mac")
        nnoremap … :Commentary<cr>
        inoremap … :Commentary<cr>
        vnoremap … :'<,'>Commentary<cr>
    else
        nnoremap <a-Semicolon> :Commentary<cr>
        inoremap <a-;> :Commentary<cr>
        vnoremap <a-;> :'<,'>Commentary<cr>
    endif
endif
