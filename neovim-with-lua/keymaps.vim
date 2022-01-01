" ================ Hotkey ReMap =====================

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" Quicker window movement
nnoremap U <C-r>
" notworking on terminal neovim, only affect on Gvim!!!
nnoremap <D-j> <C-w>j
nnoremap <D-k> <C-w>k
nnoremap <D-h> <C-w>h
nnoremap <D-l> <C-w>l
" =====================
nnoremap <A-Down> <C-w>j
nnoremap <A-Up> <C-w>k
nnoremap <A-Left> <C-w>h
nnoremap <A-Right> <C-w>l
" delete something without yank
nnoremap d "_d
nnoremap D "_D
noremap H ^
noremap L $
nnoremap / /\v
vnoremap / /\v
vnoremap // y/<c-r>"<cr>
noremap <C-left> :bp<CR>
noremap <C-right> :bn<CR>
noremap <C-g> :Goyo<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap ; :
" not working on macOS
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
" ================
noremap <leader>0 :tablast<cr>
nnoremap <leader>tt :FloatermNew<CR>
nnoremap <leader>d ::bufdo! bd!<CR>
" add quote for current word
nnoremap <Leader>q" ciw""<Esc>P
nnoremap <Leader>q' ciw''<Esc>P
nnoremap <Leader>q( ciw()<Esc>P
nnoremap <Leader>q{ ciw{}<Esc>P
nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P
" ========= coc.spelling settings ========
vmap <leader>s <Plug>(coc-codeaction-selected)
nmap <leader>s <Plug>(coc-codeaction-selected)

" ========= telescope settings ========
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" =========================================
" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>


" copy to system clipboard
" vnoremap <leader>y "+y
vnoremap <C-c> "+y
vnoremap <C-v> "+p
" nnoremap <C-h> <C-w>>
" nnoremap <C-j> <C-w>+
" nnoremap <C-k> <C-w>-
" nnoremap <C-l> <C-w><
nnoremap p ]p
nnoremap P [p
nnoremap ( %
nnoremap ) %

" use tab/shift tab to switch coc or native lsp cmp
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" cmdline quickly go to head or tail
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" netrw

" nnoremap - :Explore<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
autocmd FileType netrw setl bufhidden=delete

"-- netrw END

" turn off direction keyboard, force yourself use `hjkl` !!!
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
map <space> /
map <Esc>[1;3D :bn<CR>
map <Esc>[1;3C :bp<CR>


" tab quick swich
map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tj :tabnext<cr>
map <leader>tk :tabprev<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>
map <leader>te :tabedit<cr>
map <leader>td :tabclose<cr>
map <leader>tm :tabm<cr>

" eggcache vim 
" :command W w
" :command WQ wq
" :command Wq wq
" :command QA qa


" ================ F1-F12 Hotkey Settings =====================
" trun off F1 help page, just use `:help`.
noremap <F1> <Esc>"
" F2 show line number or not
function! HideNumber()
  if(&relativenumber == &number)
    set relativenumber! number!
  elseif(&number)
    set number!
  else
    set relativenumber!
  endif
  set number?
endfunc
nnoremap <F2> :call HideNumber()<CR>
" F3 show print char
" nnoremap <F3> :set list! list?<CR>
" F3 transparent terminal
nnoremap <F3> :TransparentToggle<CR>
" F4 wrap line on|off
nnoremap <F4> :set wrap! wrap?<CR>
set pastetoggle=<F5>            "    when in insert mode, press <F5> to go to
                                "    paste mode, where you can paste mass data
                                "    that won't be autoindented
" F6 turn on|off syntax, speed up read large file
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>
" disbale paste mode when leaving insert mode
" au InsertLeave * set nopaste
" F8 turn on tagbar
nmap <F8> :TagbarToggle<CR>
