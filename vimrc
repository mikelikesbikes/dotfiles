" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

call pathogen#infect()

syntax on

if has("autocmd")
  filetype plugin indent on
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50    " keep 50 lines of command line history
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set vb            " turn on visual bell
set nu            " show line numbers
set sw=2          " set shiftwidth to 2
set ts=2          " set number of spaces for a tab to 2
set et            " expand tabs to spaces
set ignorecase    " ignorecase in searches
set hlsearch      " highlight patterns when searching
set nohidden      " remove buffer when a tab is closed

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
  " For all ruby files, set 'shiftwidth' and 'tabspace' to 2 and expand tabs
  " to spaces.
  autocmd FileType ruby,eruby set sw=2 ts=2 et
  autocmd FileType python set sw=4 ts=4 et

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Save on focus lost
  ":au FocusLost * :wa

  augroup END

else

  set autoindent    " always set autoindenting on

endif " has("autocmd")

" Easily open and reload vimrc
"<Leader>v brings up my .vimrc
"<Leader>V reloads it -- making all changes active (have to save first)
map <Leader>v :sp $DOTFILES/vimrc<CR>
map <silent> <Leader>V :source $HOME/.vimrc<CR>:if has("gui")<CR>:source $HOME/.gvimrc<CR>:endif<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Key sequence mappings
" In command-mode, typing %/ will replace those chars with the directory of
" the file in the current buffer
cmap %/ <C-r>=expand('%:p:h')<CR>/
" execute current line as shell command, and open output in new window
map <Leader>x :silent . w ! sh > ~/.vim_cmd.out<CR>:new ~/.vim_cmd.out<CR>


" Character mapping
cnoremap <C-a> <Home>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

noremap <C-t> :CtrlP<CR>

" Sessions ********************************************************************
set sessionoptions=blank,buffers,curdir,folds,help,options,resize,tabpages,winpos,winsize,globals

function! AutosaveSessionOn(session_file_path)
  augroup AutosaveSession
    au!
    exec "au VimLeave * mks! " . a:session_file_path
  augroup end
  let g:AutosaveSessionFilePath = a:session_file_path

  echo "Auto-saving sessions to \"" . a:session_file_path . "\""
endfunction
function! AutosaveSessionOff()
  if exists("g:AutosaveSessionFilePath")
    unlet g:AutosaveSessionFilePath
  endif

  augroup AutosaveSession
    au!
  augroup end
  augroup! AutosaveSession

  echo "Auto-saving sessions is off"
endfunction
command! -complete=file -nargs=1 AutosaveSessionOn call AutosaveSessionOn(<f-args>)
command! AutosaveSessionOff call AutosaveSessionOff()
augroup AutosaveSession
  au!
  au SessionLoadPost * if exists("g:AutosaveSessionFilePath") != 0|call AutosaveSessionOn(g:AutosaveSessionFilePath)|endif
augroup end

" White space ****************************************************************
let hiExtraWhiteSpace = "hi ExtraWhitespace ctermbg=red guibg=red"
exec hiExtraWhiteSpace
au ColorScheme * exec hiExtraWhiteSpace
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
set list
set listchars=tab:▸\ ,eol:¬

" Colors *********************************************************************
if has("gui_running")
  " sweet color scheme using true color
  syntax enable
  set background=light
  colorscheme hemisu
else
  set background=light
end
