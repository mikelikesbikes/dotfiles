" Add all directories under $DOTFILES/vim/vendor as runtime paths, so plugins,
" docs, colors, and other runtime files are loaded.
let vendorpaths = globpath("$DOTFILES/vim", "vendor/*")

let vendorruntimepaths = substitute(vendorpaths, "\n", ",", "g")
execute "set runtimepath^=$DOTFILES/vim,".vendorruntimepaths

let vendorpathslist = split(vendorpaths, "\n")
for vendorpath in vendorpathslist
  if isdirectory(vendorpath."/doc")
    execute "helptags ".vendorpath."/doc"
  endif
endfor

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		      " show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		  " do incremental searching
set vb            " turn on visual bell
set nu            " show line numbers
set sw=2          " set shiftwidth to 2
set ts=2          " set number of spaces for a tab to 2
set et            " expand tabs to spaces

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

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

  augroup END

else

  set autoindent		" always set autoindenting on

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

noremap <C-t> :CommandT<CR>

" Character mapping
cnoremap <C-a> <Home>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

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


" Text formatting ********************************************************************
function! WordWrap(state)
  if a:state == "on"
    set lbr
  else
    set nolbr
  end
endfunction
com! WW call WordWrap("on")
com! Ww call WordWrap("off")

" White space ****************************************************************
let hiExtraWhiteSpace = "hi ExtraWhitespace ctermbg=red guibg=red"
exec hiExtraWhiteSpace
au ColorScheme * exec hiExtraWhiteSpace
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au BufRead,InsertLeave * match ExtraWhitespace /\s\+$/

" Markdown *******************************************************************
function! PreviewMKD()
  let tmpfile = tempname()
  exe "write! " tmpfile
  exe "!preview_mkd " tmpfile
endfunction
autocmd BufRead *.markdown map <Leader>p :call PreviewMKD()<CR>
autocmd BufRead *.markdown call WordWrap("on")
autocmd BufRead *.markdown set spell

" Folding *********************************************************************
function! EnableFolding()
  set foldcolumn=2
  set foldenable
endfunction
function! DisableFolding()
  set foldcolumn=0
  set nofoldenable
endfunction
set foldmethod=syntax
call DisableFolding()

" Netrw
let g:netrw_liststyle=3
let g:netrw_browse_split=0
let g:netrw_list_hide='^\..*\.swp$'
let g:netrw_altv=1

" Colors *********************************************************************
if has("gui_running")
  " sweet color scheme using true color
  syntax enable
  " set background=dark
  set background=light
  colorscheme solarized
  " colorscheme sunburst
else
  set bg=dark
end
function! GetColorSchemes()
  let colorschemes = {}

  for rtpath in split(&runtimepath, ",")
    let colorscheme_files = split(glob(rtpath . "/colors/*.vim"), "\n")
    for colorscheme_file in colorscheme_files
      let colorname = substitute(colorscheme_file, "^.*/\\([^/]\\+\\)\\.vim$", "\\1", "")
      let colorschemes[colorname] = colorscheme_file
    endfor
  endfor

  return colorschemes
endfunction
function! FListColorSchemes()
  new
  call append(0, keys(GetColorSchemes()))
  delete
  0
  setlocal nomodified nomodifiable bufhidden=delete nonumber nowrap foldcolumn=0 nofoldenable
  nnoremap <buffer> <silent> q    :<C-U>bdelete<CR>
  nnoremap <buffer> <silent> <CR> :<C-U>exe "colorscheme ".getline('.')<CR>
endfunction
command! ListColorSchemes call FListColorSchemes()


" Projects *******************************************************************
function! ConfigureForMMH()
  set tags=./tags,$MMH_HOME/tags,$MMH_ROOT/stable/tags,$MMH_ROOT/indexer/tags,$MMH_ROOT/jdk_tags,$HOME/tags,tags
endfunction
com! Mmh call ConfigureForMMH()

" Java ***********************************************************************
