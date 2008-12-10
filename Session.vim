let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <S-Insert> <MiddleMouse>
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set completefunc=syntaxcomplete#Complete
set directory=~/tmp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=DejaVu\ Sans\ Mono\ Bold\ 11
set guioptions=agimtT
set helplang=en
set iskeyword=@,48-57,_,192-255,$
set mouse=a
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim71,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set shiftwidth=2
set softtabstop=2
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
set window=47
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Rails/imijit
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +26 app/sweepers/group_sweeper.rb
badd +26 app/sweepers/imijit_sweeper.rb
badd +16 app/controllers/groups_controller.rb
badd +10 app/controllers/application.rb
badd +0 app/sweepers/image_sweeper.rb
badd +62 app/controllers/images_controller.rb
badd +0 app/views/images/show.html.haml
silent! argdel *
edit app/controllers/images_controller.rb
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 23 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 70 + 70) / 141)
exe '2resize ' . ((&lines * 23 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 70 + 70) / 141)
exe '3resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 70 + 70) / 141)
exe '4resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 70 + 70) / 141)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%D(in\\\ %f),%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Failure:,%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Error:,%+A'%.%#'\\\ FAILED,%C%.%#(eval)%.%#,%C-e:%.%#,%C%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%C%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%C%.%#/vendor/rails/%.%#,%C\\\ %\\\\+On\\\ line\\\ #%l\\\ of\\\ %f,%CActionView::TemplateError:\\\ compile\\\ error,%Ctest_%.%#(%.%#):%#,%C%.%#\\\ [%f:%l]:,%C\\\ \\\ \\\ \\\ [%f:%l:%.%#,%C\\\ \\\ \\\ \\\ %f:%l:%.%#,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#]:,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#,%Z%f:%l:\\\ %#%m,%Z%f:%l:,%C%m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ %m,%-G%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%-G%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%-G%.%#/vendor/rails/%.%#,%-G%.%#%\\\\d%\\\\d:%\\\\d%\\\\d:%\\\\d%\\\\d%.%#,%-G%\\\\s%#from\\\ %.%#,%f:%l:\\\ %#%m,%-G%.%#
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=rake
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/Rails/imijit,~/Rails/imijit/app,~/Rails/imijit/app/models,~/Rails/imijit/app/controllers,~/Rails/imijit/app/helpers,~/Rails/imijit/config,~/Rails/imijit/lib,~/Rails/imijit/app/views,~/Rails/imijit/app/views/images,~/Rails/imijit/public,~/Rails/imijit/test,~/Rails/imijit/test/unit,~/Rails/imijit/test/functional,~/Rails/imijit/test/integration,~/Rails/imijit/app/*,~/Rails/imijit/vendor,~/Rails/imijit/vendor/plugins/*/lib,~/Rails/imijit/vendor/plugins/*/test,~/Rails/imijit/vendor/rails/*/lib,~/Rails/imijit/vendor/rails/*/test,/usr/local/lib/site_ruby/1.8,/usr/local/lib/site_ruby/1.8/i486-linux,/usr/local/lib/site_ruby/1.8/i386-linux,/usr/local/lib/site_ruby,/usr/lib/ruby/vendor_ruby/1.8,/usr/lib/ruby/vendor_ruby/1.8/i486-linux,/usr/lib/ruby/vendor_ruby,/usr/lib/ruby/1.8,/usr/lib/ruby/1.8/i486-linux,/usr/lib/ruby/1.8/i386-linux,,/usr/lib/ruby/gems/1.8/gems/VimMate-0.6.6/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.1.0/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.1.1/lib,/usr/lib/ruby/gems/1.8/gems/action
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%<%f\ %h%m%r%{RailsStatusline()}%=%-16(\ %l,%c-%v\ %)%P
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=8
setlocal tags=~/Rails/imijit/tmp/tags,./tags,./TAGS,tags,TAGS,~/Rails/imijit/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 69 - ((16 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
69
normal! 04l
wincmd w
argglobal
edit app/views/images/show.html.haml
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%D(in\\\ %f),%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Failure:,%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Error:,%+A'%.%#'\\\ FAILED,%C%.%#(eval)%.%#,%C-e:%.%#,%C%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%C%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%C%.%#/vendor/rails/%.%#,%C\\\ %\\\\+On\\\ line\\\ #%l\\\ of\\\ %f,%CActionView::TemplateError:\\\ compile\\\ error,%Ctest_%.%#(%.%#):%#,%C%.%#\\\ [%f:%l]:,%C\\\ \\\ \\\ \\\ [%f:%l:%.%#,%C\\\ \\\ \\\ \\\ %f:%l:%.%#,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#]:,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#,%Z%f:%l:\\\ %#%m,%Z%f:%l:,%C%m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ %m,%-G%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%-G%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%-G%.%#/vendor/rails/%.%#,%-G%.%#%\\\\d%\\\\d:%\\\\d%\\\\d:%\\\\d%\\\\d%.%#,%-G%\\\\s%#from\\\ %.%#,%f:%l:\\\ %#%m,%-G%.%#
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=rake
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,~/Rails/imijit,~/Rails/imijit/app,~/Rails/imijit/app/models,~/Rails/imijit/app/controllers,~/Rails/imijit/app/helpers,~/Rails/imijit/config,~/Rails/imijit/lib,~/Rails/imijit/app/views,~/Rails/imijit/app/views/images,~/Rails/imijit/public,~/Rails/imijit/test,~/Rails/imijit/test/unit,~/Rails/imijit/test/functional,~/Rails/imijit/test/integration,~/Rails/imijit/app/*,~/Rails/imijit/vendor,~/Rails/imijit/vendor/plugins/*/lib,~/Rails/imijit/vendor/plugins/*/test,~/Rails/imijit/vendor/rails/*/lib,~/Rails/imijit/vendor/rails/*/test
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%<%f\ %h%m%r%{RailsStatusline()}%=%-16(\ %l,%c-%v\ %)%P
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.css,.js,.yml,.csv,.rake,.sql,.html,.xml
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=8
setlocal tags=~/Rails/imijit/tmp/tags,./tags,./TAGS,tags,TAGS,~/Rails/imijit/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 24 - ((14 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 037l
wincmd w
argglobal
edit app/sweepers/image_sweeper.rb
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%D(in\\\ %f),%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Failure:,%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Error:,%+A'%.%#'\\\ FAILED,%C%.%#(eval)%.%#,%C-e:%.%#,%C%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%C%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%C%.%#/vendor/rails/%.%#,%C\\\ %\\\\+On\\\ line\\\ #%l\\\ of\\\ %f,%CActionView::TemplateError:\\\ compile\\\ error,%Ctest_%.%#(%.%#):%#,%C%.%#\\\ [%f:%l]:,%C\\\ \\\ \\\ \\\ [%f:%l:%.%#,%C\\\ \\\ \\\ \\\ %f:%l:%.%#,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#]:,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#,%Z%f:%l:\\\ %#%m,%Z%f:%l:,%C%m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ %m,%-G%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%-G%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%-G%.%#/vendor/rails/%.%#,%-G%.%#%\\\\d%\\\\d:%\\\\d%\\\\d:%\\\\d%\\\\d%.%#,%-G%\\\\s%#from\\\ %.%#,%f:%l:\\\ %#%m,%-G%.%#
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=rake
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/Rails/imijit,~/Rails/imijit/app,~/Rails/imijit/app/models,~/Rails/imijit/app/controllers,~/Rails/imijit/app/helpers,~/Rails/imijit/config,~/Rails/imijit/lib,~/Rails/imijit/app/views,~/Rails/imijit/test,~/Rails/imijit/test/unit,~/Rails/imijit/test/functional,~/Rails/imijit/test/integration,~/Rails/imijit/app/*,~/Rails/imijit/vendor,~/Rails/imijit/vendor/plugins/*/lib,~/Rails/imijit/vendor/plugins/*/test,~/Rails/imijit/vendor/rails/*/lib,~/Rails/imijit/vendor/rails/*/test,/usr/local/lib/site_ruby/1.8,/usr/local/lib/site_ruby/1.8/i486-linux,/usr/local/lib/site_ruby/1.8/i386-linux,/usr/local/lib/site_ruby,/usr/lib/ruby/vendor_ruby/1.8,/usr/lib/ruby/vendor_ruby/1.8/i486-linux,/usr/lib/ruby/vendor_ruby,/usr/lib/ruby/1.8,/usr/lib/ruby/1.8/i486-linux,/usr/lib/ruby/1.8/i386-linux,,/usr/lib/ruby/gems/1.8/gems/VimMate-0.6.6/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.1.0/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.1.1/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.2.2/lib,/usr/lib/ruby/gems/1.8/gems/actionpac
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%<%f\ %h%m%r%{RailsStatusline()}%=%-16(\ %l,%c-%v\ %)%P
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=8
setlocal tags=~/Rails/imijit/tmp/tags,./tags,./TAGS,tags,TAGS,~/Rails/imijit/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 22 - ((21 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
wincmd w
argglobal
edit app/sweepers/group_sweeper.rb
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%D(in\\\ %f),%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Failure:,%A\\\ %\\\\+%\\\\d%\\\\+)\\\ Error:,%+A'%.%#'\\\ FAILED,%C%.%#(eval)%.%#,%C-e:%.%#,%C%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%C%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%C%.%#/vendor/rails/%.%#,%C\\\ %\\\\+On\\\ line\\\ #%l\\\ of\\\ %f,%CActionView::TemplateError:\\\ compile\\\ error,%Ctest_%.%#(%.%#):%#,%C%.%#\\\ [%f:%l]:,%C\\\ \\\ \\\ \\\ [%f:%l:%.%#,%C\\\ \\\ \\\ \\\ %f:%l:%.%#,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#]:,%C\\\ \\\ \\\ \\\ \\\ %f:%l:%.%#,%Z%f:%l:\\\ %#%m,%Z%f:%l:,%C%m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#.rb:%\\\\d%\\\\+:in\\\ `load':\\\ %f:%l:\\\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ syntax\\\ error\\\\\\,\ %m,%.%#:in\\\ `require':in\\\ `require':\\\ %f:%l:\\\ %m,%-G%.%#/lib/gems/%\\\\d.%\\\\d/gems/%.%#,%-G%.%#/lib/ruby/%\\\\d.%\\\\d/%.%#,%-G%.%#/vendor/rails/%.%#,%-G%.%#%\\\\d%\\\\d:%\\\\d%\\\\d:%\\\\d%\\\\d%.%#,%-G%\\\\s%#from\\\ %.%#,%f:%l:\\\ %#%m,%-G%.%#
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=rake
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/Rails/imijit,~/Rails/imijit/app,~/Rails/imijit/app/models,~/Rails/imijit/app/controllers,~/Rails/imijit/app/helpers,~/Rails/imijit/config,~/Rails/imijit/lib,~/Rails/imijit/app/views,~/Rails/imijit/test,~/Rails/imijit/test/unit,~/Rails/imijit/test/functional,~/Rails/imijit/test/integration,~/Rails/imijit/app/*,~/Rails/imijit/vendor,~/Rails/imijit/vendor/plugins/*/lib,~/Rails/imijit/vendor/plugins/*/test,~/Rails/imijit/vendor/rails/*/lib,~/Rails/imijit/vendor/rails/*/test,/usr/local/lib/site_ruby/1.8,/usr/local/lib/site_ruby/1.8/i486-linux,/usr/local/lib/site_ruby/1.8/i386-linux,/usr/local/lib/site_ruby,/usr/lib/ruby/vendor_ruby/1.8,/usr/lib/ruby/vendor_ruby/1.8/i486-linux,/usr/lib/ruby/vendor_ruby,/usr/lib/ruby/1.8,/usr/lib/ruby/1.8/i486-linux,/usr/lib/ruby/1.8/i386-linux,,/usr/lib/ruby/gems/1.8/gems/VimMate-0.6.6/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.1.0/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.1.1/lib,/usr/lib/ruby/gems/1.8/gems/actionmailer-2.2.2/lib,/usr/lib/ruby/gems/1.8/gems/actionpac
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%<%f\ %h%m%r%{RailsStatusline()}%=%-16(\ %l,%c-%v\ %)%P
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=8
setlocal tags=~/Rails/imijit/tmp/tags,./tags,./TAGS,tags,TAGS,~/Rails/imijit/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 26 - ((13 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 0103l
wincmd w
4wincmd w
exe '1resize ' . ((&lines * 23 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 70 + 70) / 141)
exe '2resize ' . ((&lines * 23 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 70 + 70) / 141)
exe '3resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 70 + 70) / 141)
exe '4resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 70 + 70) / 141)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
