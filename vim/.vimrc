set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dylanaraps/wal.vim'
Plugin 'valloric/youcompleteme'
Plugin 'fatih/vim-go'
Plugin 'chrisbra/unicode.vim'


call vundle#end()
filetype plugin indent on


"
" :PluginList -list plugins
" :PluginInstall -install new plugins and update
" :PluginSearch foo
" :PluginClean - remove plugins

syntax on
colorscheme wal

if has('gui_running')
	set guifont=DejaVu-Sans-Mono-Nerd_font-Complete-Mono:10
endif


" Key remaps
let mapleader = "-"
nnoremap <leader>a :cclose<CR>

" Status line
set laststatus=2

function! GitBranch()
	return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n' ")
endfunction

function! StatuslineGit()
	let l:branchname = GitBranch()
	return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNR#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=



" turn off autocomplete preview
set completeopt-=preview

