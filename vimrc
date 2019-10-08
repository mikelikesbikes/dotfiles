set nocompatible

source ~/.vim/bundles.vim
source ~/.vim/ui.vim

" CTags
set tags=tmp/tags;/,./tmp/tags;/,tags;/,./tags;/

" This is an alternative that also works in block mode, but the deleted text
" is lost and it only works for putting the current register.
"vnoremap p "_dp

"<Leader>v brings up my .vimrc
map <Leader>v :sp $DOTFILES/vimrc<CR>

" automatically source vimrc if writing .vimrc or vimrc
autocmd! BufWritePost .vimrc,vimrc,*.vim source $MYVIMRC

" <Leader>w clears end of line whitespace
map <Leader>w :%s/\s\+$//g<CR>

" <Leader>s converts beginning of line tabs to spaces
map <Leader>s :retab<CR>

" <Leader>h runs noh
map <Leader>h :noh<CR>

" <Leader>f sets the text width to 80 and then reformats the current document
map <Leader>f :setl tw=80<CR>gggqG<CR>

" <Leader>bd destroys all open buffers
map <Leader>bd :bufdo bd<CR>

" Key sequence mappings
" execute current line as shell command, and open output in new window
map <Leader>x :silent . w ! sh > ~/.vim_cmd.out<CR>:new ~/.vim_cmd.out<CR>

" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" insert pry or debugger
map <Leader>b :normal Orequire 'pry'; binding.pry<esc>
map <Leader>p :normal Oputs __method__<esc>
map <Leader>d :normal Orequire 'byebug'; debugger<esc>

" suppress netrw history file from being saved
let g:netrw_dirhistmax=0
