
augroup bundles
  autocmd!

  set nocompatible
  filetype off

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  " Solarized
    Plugin 'altercation/vim-colors-solarized'

  " Let Vundle manage Vundle
    Plugin 'VundleVim/Vundle.vim'

  " Ruby/Rails
    Plugin 'tpope/vim-rails'

  " Clojure
    Plugin 'VimClojure'

  " Scala
    Plugin 'derekwyatt/vim-scala'

  " Golang
  "  Plugin 'fatih/vim-go'

  " Markdown/Textile/etc
    Plugin 'timcharper/textile.vim'
    Plugin 'tpope/vim-markdown'

  " HTML/CSS/Javascript
    Plugin 'vim-coffee-script'


  " Utilities
    Plugin 'mileszs/ack.vim'
    if executable('ag')
      let g:ackprg = 'ag --vimgrep'
    endif

    Plugin 'kien/ctrlp.vim'
    Plugin 'vim-airline/vim-airline'

    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-rhubarb'
    map <Leader>g :GBrowse!<CR>

    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-projectionist'

    Plugin 'janko-m/vim-test'
    let test#strategy = "iterm"
    nmap <silent> <leader>t :TestNearest<CR>
    nmap <silent> <leader>T :TestFile<CR>
    " nmap <silent> <leader>a :TestSuite<CR>
    " nmap <silent> <leader>l :TestLast<CR>
    " nmap <silent> <leader>v :TestVisit<CR>

    " from: https://github.com/Shougo/neocomplete.vim
    Plugin 'Shougo/neocomplete.vim'
    let g:acp_enableAtStartup = 0
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1

  call vundle#end()
  filetype plugin indent on
augroup END

syntax enable

if has('gui_running')
else
  set t_Co=256
  let g:solarized_termcolors=256
endif

colorscheme solarized
set background=light
