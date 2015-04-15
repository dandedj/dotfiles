" Setup the google plugin vim support
source /usr/share/vim/google/google.vim

set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set hidden
set cursorline
set history=200
set ruler
set number
set splitbelow
set splitright
let mapleader = ","

" custom leader mappings
" Strip whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Other misc remappings
" Changes the split navigation keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Solarized changes
set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on    " required


" ctrlP settings
let g:ctrlp_command = 'CtrlPMixed'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn\|\.git5_specs$\|review$',
  \ 'file': '\.exe$\|\.so$\|\.dll$',
  \ 'link': 'blaze-bin\|blaze-genfiles\|blaze-google3\|blaze-out\|blaze-testlogs\|READONLY$',
  \ }
let g:ctrlp_working_path_mode = 0
let g:ctrlp_root_markers = ['.ctrlp_root']
let g:ctrlp_max_files = 30000
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_switch_buffer = 2
nmap <C-b> :CtrlPBuffer<CR>
nmap <C-o> :CtrlPLine<CR>

" ctrlP settings to work in google 3
let g:ctrlp_directories = map(['google3/contentads/xbid'], 'piperlib#GetRootDir() . v:val')

Glug gtimporter
Glug gtags
Glug blaze plugin[mappings]='<leader>b'
Glug corpweb
Glug youcompleteme-google

