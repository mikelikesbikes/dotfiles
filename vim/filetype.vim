" Gets loaded before Vim-provided filetypes, so setfiletype can be used here
" to override default filetype settings.
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au BufRead,BufNewFile *.feature setfiletype cucumber
  au BufRead,BufNewFile *.as setfiletype actionscript
  au BufRead,BufNewFile *.markdown,*.mkd setfiletype mkd
  au BufRead,BufNewFile Gemfile setfiletype ruby
  au BufRead,BufNewFile *.pdf.prawn setfiletype ruby
  au BufRead,BufNewFile *.wsdl setfiletype xml
  au BufRead,BufNewFile *.html.mustache setfiletype html
augroup END
