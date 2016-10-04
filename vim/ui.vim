syntax on

" Visual
  set ruler
  set number
  set guioptions=ce
  set showmatch                 " Briefly jump to a paren once it's balanced
  set linespace=2
  set laststatus=2

" Colorscheme
  if has("gui_running")
    colorscheme solarized
    set background=light
  else
    set background=light
  end

" Tabs/Whitespace
  set tabstop=2
  set shiftwidth=2
  set autoindent
  set smarttab
  set expandtab
  set nowrap
  set list
  set listchars=tab:▸\ ,eol:¬
  set backspace=indent,eol,start " allow backspacing over everything in insert mode
  " Highlight end of line whitespace
    let hiExtraWhiteSpace = "hi ExtraWhitespace ctermbg=red guibg=red"
    exec hiExtraWhiteSpace
    au ColorScheme * exec hiExtraWhiteSpace
    au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    au BufRead,InsertLeave * match ExtraWhitespace /\s\+$/


" Directories for swp files
  " persistent undos
  "    set undofile
  "    set undodir=~/.vim/dirs/undos
  "    set backupdir=~/.vim/dirs/backups
  "    set directory=~/.vim/dirs/swaps
  set nobackup
  set noswapfile

" OS X clipboard when yanking/pasting
  set clipboard=unnamed

" Bells
  set novisualbell  " No blinking
  set noerrorbells  " No noise.
  set vb t_vb= " disable any beeps or flashes on error

" Searching
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase

" Misc
  set history=1000
  set autoread
  set nohidden
  set complete=.,b,u,]
