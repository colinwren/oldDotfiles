"  Make vim more useful
set nocompatible

" Enabled later, after Pathogen
filetype off

" Change mapleader
let mapleader=","

" Local dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" Set some junk
set autoindent " Copy indent from last line when starting new line.
set backspace=indent,eol,start
set cursorline " Highlight current line
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb " BOM often causes trouble
set esckeys " Allow cursor keys in insert mode.
set nofoldenable    " disable folding"
set formatoptions=
set formatoptions+=c " Format comments
set formatoptions+=r " Continue comments by default
set formatoptions+=q " Format comments with gq
set formatoptions+=n " Recognize numbered lists
set formatoptions+=2 " Use indent from 2nd line of a paragraph
set formatoptions+=l " Don't break lines that are already long
set formatoptions+=1 " Break before 1-letter words
set gdefault " By default add g flag to search/replace. Add g to toggle.
set hidden " When a buffer is brought to foreground, remember undo history and marks.
set history=1000 " Increase history from 20 default to 1000
set hlsearch " Highlight searches
set ignorecase " Ignore case of searches.
set incsearch " Highlight dynamically as pattern is typed.
set laststatus=2 " Always show status line
set magic " Enable extended regexes.
set mouse=a " Enable moouse in all in all modes.
set noerrorbells " Disable error bells.
set nojoinspaces " Only insert single space after a '.', '?' and '!' with a join command.
set nostartofline " Don't reset cursor to start of line when moving around.
set nowrap " Do not wrap lines.
set nu " Enable line numbers.
set relativenumber
set ofu=syntaxcomplete#Complete " Set omni-completion method.
set report=0 " Show all changes.
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window.
set shiftwidth=2 " The # of spaces for indenting.
set shortmess=atI " Don't show the intro message when starting vim.
set showmode " Show the current mode.
set showtabline=2 " Always show tab bar.
set sidescrolloff=3 " Start scrolling three columns before vertical border of window.
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters.
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set splitbelow " New window goes below
set splitright " New windows goes right
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set title " Show the filename in the window titlebar.
set ttyfast " Send more characters at a given time.
set ttymouse=xterm " Set mouse type to xterm.
set undofile " Persistent Undo.
set lazyredraw " Prevent scroll lag
set visualbell " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/comp/*,*/dist/*

set wildmenu " Hitting TAB in command mode will show possible completions above command line.
set wildmode=list:longest " Complete only until point of ambiguity.
set winminheight=0 "Allow splits to be reduced to a single line.
set wrapscan " Searches wrap around end of file

" stuff for textwrapping"
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=81


" Toggle show tabs and trailing spaces (,c)
set list
set lcs=tab:›\ ,trail:·,nbsp:_
"set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-

" Stuff for indenting"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set shiftround

" Remap :W to :w
:command WQ wq
:command Wq wq
:command W w
:command Q q

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  Leader Stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Insert newline
map <leader><Enter> O<ESC>
map <space><Enter> o<ESC>

" autoindent file
map <leader>= ggVG==

" Change paste setting
map <leader>p :set paste<cr>
map <leader>o :set nopaste<cr>

" Add semi-colon to end of line
map <leader>; $a;<ESC>
map <leader>, $a,<ESC>

" wrap current word
map <leader>' ysiw'
map <leader>" ysiw"
map <leader>{ ysiw{
map <leader>[ ysiw[
map <leader>( ysiw(

"focus mode
map <leader>f :GitGutterToggle<cr>:set nocul<cr>:set numberwidth=7<cr>:highlight LineNr ctermfg=233 ctermbg=233<cr>

"revert focus mode
map <leader>d :GitGutterToggle<cr>:set cul<cr>:set numberwidth=1<cr>:highlight LineNr ctermfg=DarkGrey ctermbg=234<cr>

" Open file in macvim
map <leader>gv :! mvim %<cr>

map <leader>t :set expandtab!<cr>:set tabstop=4<cr>:set shiftwidth=4<cr>
map <leader>s :set expandtab<cr>:set tabstop=2<cr>:set shiftwidth=2<cr>

"change surrounding quote
map <space>' cs"'
map <space>" cs'"

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

map <esc>j <C-W>j
map <esc>k <C-W>k
map <esc>h <C-W>h
map <esc>l <C-W>l

"disable ex mode"
map Q <Nop>

noremap <up> <C-w> "next window
noremap <down> <C-j>
noremap <left> <C-h>
noremap <right> <C-l>
nnoremap j gj
nnoremap k gk

" make Y behave
nnoremap Y y$


map <space><space><space>  20j
" Cycle through buffers in the current split
nnoremap <Space>j :bn<CR>
nnoremap <Space>k :bp<CR>
" move to end or beggining of line
nnoremap <Space>l :CtrlP<CR>

nnoremap <Space>; ci'

" quick shell
nnoremap <Space>t :sh<cr>

nnoremap <Space>a ^
nnoremap <Space>s @a
nnoremap <Space>d :bd<CR>
nnoremap <Space>f $

nnoremap <Space>b :bd *<C-a><CR>:CtrlP<CR>
"delete block
nnoremap <Space>x da{dd
"quit
nnoremap <Space>q :q<CR>

" rails mappings
nnoremap <space>u :GitGutterNextHunk<cr>
nnoremap <space>i :GitGutterPrevHunk<cr>

" keep visual block selected after indent
vnoremap > >gv
vnoremap < <gv

" select all
map <Leader>a ggVG

nnoremap <Space>q :q<CR>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

vnoremap <Tab> 1>
vnoremap <S-Tab> 1<
nnoremap <Tab> >>
nnoremap <S-Tab> <<
" stops waiting for next keypress to complete leader command"
set timeoutlen=600

execute pathogen#infect()
syntax on
filetype plugin indent on

" faster split resizing (+,-)
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif
" Set syntax highlighting options.
set t_Co=256

"colorscheme Tomorrow-Night-Eighties
colorscheme jellybeans
"colorscheme vividchalk
hi CursorLine term=bold cterm=bold ctermbg=232
highlight ColorColumn ctermbg=232
hi IndentGuidesOdd ctermbg=232
hi IndentGuidesEven ctermbg=234
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=234
highlight SignColumn ctermbg=234
highlight Normal ctermbg=233
set modifiable
set noswapfile


"get new version of this
" only use if js
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

map <leader>js :set ft=javascript syntax=javascript<Cr>


" save on esc c
map <Esc>s :w<CR>
imap <Esc>s :w<CR>

" nerdTree options
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'
let delimitMate_expand_cr = 1

" nerdcommenter options
map <Space>c ,c<space>

" nerdcommenter options
map <leader>nt :NERDTree<cr>

" indent guide options
let indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1

" nocomple chache options
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><c-c>  neocomplcache#smart_close_popup()
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" zen coding option
let g:user_zen_expandabbr_key='<esc><Tab>'

autocmd VimEnter * :IndentGuidesEnable
autocmd VimEnter * :if argc() is 0 | :CtrlP<CR> | endif

" gundo option
nnoremap <leader>gu :GundoToggle<CR>
nnoremap <leader>rp :RainbowParenthesesToggleAll<CR>
au BufEnter * inoremap <expr><s-TAB> pumvisible() ? "\<C-n>" : "<s-TAB>"
highlight NonText ctermfg=blue
au BufNewFile,BufRead *.ejs set filetype=html

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
" multi cursor has comtom config so it will break everything when it is updated
 source /Users/colinwren/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
