                        " New After 15/09/2016
set nocompatible        " must be first line
set showmode            " display the current mode
set nowrap              " wrap long lines
"set autoread  " GuiOnly-Auto read when a file is changed on disk
set expandtab tabstop=6 " expand-tabs are spaces, not tabs " an indentation every four
filetype off
set nobackup nowritebackup noswapfile " backup settings
set ruler " show line nummer on laststatus
set history=100 " Default 20
set undolevels=100
set mouse=a " enable mouse for vim & gvim
set wildmenu wildmode=longest:full,full
set wildignore+=*.DS_Store " OSX bullshit
set hidden " buffer-thing...
set encoding=utf-8
set dictionary=/usr/share/dict/words
set synmaxcol=800 " Don't try to highlight lines longer than 800 characters.
set showcmd " show any commands
" ah2h
" Vim Plugins :
set runtimepath^=~/.vim/bundle/ctrlp.vim
" http://kien.github.io/ctrlp.vim/
set runtimepath^=~/.vim/bundle/plugin/buftabline.vim
" http://vimawesome.com/plugin/buftabline

" Syntax themes
syntax enable
colorscheme wombat256
"colorscheme delek " for linux-tty 
" note for linux u neeed 256 color enable in .bashrc or... for theme to work.

"set leader
let mapleader = ","



"Terminal Only:
"highlight Comment ctermfg=grey " works
"highlight StatusLine ctermfg=yellow " works
"highlight Normal ctermfg=yellow " works
"highlight StatusLine gui="yellow"
"highlight Normal gui="yellow"

" Seach-Settings
set incsearch hlsearch " less searching
hi Search ctermfg=black ctermbg=yellow
set smartcase ignorecase  " case insensitive search

"--------------------------------------------------------"
if has("gui_running") "GUI ONLY
set guioptions-=r 
set guioptions-=T
set antialias
set guifont=Menlo\ Regular:h14
set lines=24 columns=80
highlight Comment gui=italic
"highlight StatusLine gui=bold guifg=black guibg=yellow 
endif
"--------------------------------------------------------" 
" HotKeys ahah
nnoremap <F9><F9> :noh<CR>
nnoremap q :q<CR>
nnoremap Q :q!
"nnoremap <F6><F6> <C-W>w
nnoremap <F2><F2> :split<CR>
nnoremap <F4><F4> :vsplit<CR>
noremap <F5> :set invnumber<CR>
noremap <F9><Right> :tabn<CR>
noremap <F9><Left> :tabp<CR>
"noremap <C><Right> :bnext<CR>
"noremap <C><Left> :bprev<CR>
nnoremap <C><tab>   :tabnext<CR>
inoremap <C-v> <Esc>v
noremap <C-v> <Esc>v
""Toggle paste
" set pastetoggle=<F6>
" remapings:
map ; :
" map <C> o v <C> v

" lineinfos
set laststatus=2
"set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
set modelines=0 " security problem if on..

" MacOS X Tmux Only:
if exists("$TMUX")
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
endif

" MacOS X GNU_Screen Only:
if exists("$STY") "$STY for Screen
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
endif

nnoremap _md :set ft=markdown<CR>

" " Setup term color support
" if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
"   set t_Co=256
" endif

" This sets the minimum window height to N
"set wmh=0 "
"set winheight=999 " set 99%

" Vim Aliases
command Q q!
cnoreabbrev W w

"Copy - copy Whole File to MacOSX-Clipboard
command Copy %w !pbcopy 
command Paste r !pbpaste
" Alias as in Edits ":e" ":tabnew"
command VVvim tabnew ~/.vimrc
command VVemacs tabnew ~/.emacs
command VVtmux tabnew ~/.tmux.conf
command VVscreen tabnew ~/.screenrc
command VValias tabnew ~/.home/.term_aliases
command VVq tabnew ~/.home/.quick_aliases
"set visualbell    " don't beep

if has("gui_macvim")
	  let macvim_hig_shift_movement = 1
	endif

"" folding: zf for make a new folding :D
nnoremap <Space> za
vnoremap <Space> za 
"noremap <C-V> visual-mode 

"" scripts:
set autoread
augroup checktime
    au!
    if !has("gui_running")
        "silent! necessary otherwise throws errors when using command
        "line window.
        autocmd BufEnter        * silent! checktime
        autocmd CursorHold      * silent! checktime
        autocmd CursorHoldI     * silent! checktime
        "these two _may_ slow things down. Remove if they do.
        autocmd CursorMoved     * silent! checktime
        autocmd CursorMovedI    * silent! checktime
    endif
augroup END


"tips"
" :highlight Comment cterm=bold :highlight Comment cterm=underline
