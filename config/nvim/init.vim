" Fundamentals "{{{

autocmd!
scriptencoding utf-8

" stop loading config if it's on tiny or small
if !1 | finish | endif

set nocompatible

" Numbers
set number
set numberwidth=1
set relativenumber

" Enable using the mouse to click or select some peace of code
set mouse=a

set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set autoindent
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=12
set expandtab

set shell=fish
set backupskip=/tmp/*,/private/tmp/*

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set noru nosm
" set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
" Ignore case when searching
set ignorecase

" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent

" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

"}}}

" Highlights "{{{

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

" highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

" set cursorline
" set cursorcolumn

" augroup BgHighlight
"   autocmd!
"   autocmd WinEnter * set cul
"   autocmd WinLeave * set nocul
" augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

"}}}

" File types "{{{

au BufNewFile,BufRead *.es6 setf javascript
au BufNewFile,BufRead *.tsx setf typescriptreact
au BufNewFile,BufRead *.jsx setf javascriptreact
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
au BufNewFile,BufRead *.flow set filetype=javascript
au BufNewFile,BufRead *.fish set filetype=fish
" autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
" autocmd BufRead,BufNewFile
"       \ aliases.local,
"       \zshenv.local,zlogin.local,zlogout.local,zshrc.local,zprofile.local,
"       \*/zsh/configs/*
"       \ set filetype=sh
" autocmd BufRead,BufNewFile gitconfig.local set filetype=gitconfig
" autocmd BufRead,BufNewFile tmux.conf.local set filetype=tmux
" autocmd BufRead,BufNewFile vimrc.local set filetype=vim

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

" " When editing a file, always jump to the last known cursor position.
" " Don't do it for commit messages, when the position is invalid, or when
" " inside an event handler (happens when dropping a file on gvim).
" autocmd BufReadPost *
"       \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
"       \   exe "normal g`\"" |
"       \ endif


"}}}

" Imports "{{{

runtime ./plug.vim

runtime ./maps.vim

"}}}

" Syntax theme "{{{

if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5

  set background=dark

  let g:everforest_transparent_background = 1
  let g:everforest_enable_italic = 0
  let g:everforest_better_performance = 0
  let g:everforest_diagnostic_virtual_text = 'colored'

  let g:everforest_sign_column_background = 'grey'
  let g:everforest_spell_foreground = 'colored'
  let g:everforest_diagnostic_text_highlight = 1
  let g:everforest_diagnostic_line_highlight = 1

  " let g:everforest_disable_terminal_colors = 1

  " let g:everforest_colors_override = {
  "       \ 'fg':         ['#d3c6aa',   '223'],
  "       \ 'red':        ['#e67e80',   '167'],
  "       \ 'orange':     ['#e69875',   '208'],
  "       \ 'yellow':     ['#dbbc7f',   '214'],
  "       \ 'green':      ['#a7c080',   '142'],
  "       \ 'aqua':       ['#83c092',   '108'],
  "       \ 'blue':       ['#7fbbb3',   '109'],
  "       \ 'purple':     ['#d699b6',   '175'],
  "       \ 'grey0':      ['#7a8478',   '243'],
  "       \ 'grey1':      ['#859289',   '245'],
  "       \ 'grey2':      ['#9da9a0',   '247'],
  "       \ 'statusline1':['#a7c080',   '142'],
  "       \ 'statusline2':['#d3c6aa',   '223'],
  "       \ 'statusline3':['#e67e80',   '167'],
  "       \ 'none':       ['NONE',      'NONE']
  "       \ }

  colorscheme everforest
endif

"}}}

" Extras "{{{

" Fern file manager setup
let g:fern#disable_default_mappings   = 1
let g:fern#disable_drawer_auto_quit   = 1
let g:fern#disable_viewer_hide_cursor = 1
" let g:fern#disable_auto_buffer_delete = 1
" let g:fern#renderer = "nerdfont"

" set exrc

"}}}

" LSP "{{{




"}}}
" vim: set foldmethod=marker foldlevel=0:
