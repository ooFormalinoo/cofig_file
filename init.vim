let g:python3_host_prog='D:/Anaconda3/envs/nvim3/python.exe'
let g:python_host_prog='D:/Anaconda3/envs/nvim2/python.exe'

call plug#begin('D:\Neovim\plug')

Plug 'tpope/vim-surround' 
Plug 'VundleVim/Vundle.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'zxqfl/tabnine-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'skywind3000/vim-terminal-help'
call plug#end()


set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set showcmd
set guifont=Consolas:h14
set cul
set number
set autoindent
set cindent
set syntax=on
set foldenable
set nobackup
set noswapfile
set noundofile
set wrap
set linebreak
set t_Co=256 


" 自动补全设置
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']

" tagbar
let g:tagbar_width=35
nnoremap <F6> :TagbarToggle<CR>

" nerdtree
nnoremap <F5> :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=0
" 设置宽度
let NERDTreeWinSize=25
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp', '\.class']
" 显示书签列表
let NERDTreeShowBookmarks=1
" 设置左箭头
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'


" teiminal
let g:terminal_shell='powershell'
let g:teiminal_kill = 'term'

inoremap jj <Esc>
nnoremap <s-cr> :Autoformat<CR>
nnoremap y "+y
vnoremap y "+y
nnoremap p "+p
vnoremap p "+p
nnoremap d "+d
vnoremap d "+d

noremap E $
noremap B ^
nnoremap <Space>j J
vnoremap <Space>j J

nnoremap J gt
nnoremap K gT

nnoremap <m-h> <c-w>h
nnoremap <m-j> <c-w>j
nnoremap <m-k> <c-w>k
nnoremap <m-l> <c-w>l

colorscheme space-vim-dark
if $TERM_PROGRAM =~ 'Terminal'
        hi Normal     ctermbg=NONE guibg=NONE
        hi LineNr     ctermbg=NONE guibg=NONE
        hi SignColumn ctermbg=NONE guibg=NONE
endif
hi Comment guifg=#5C6370 ctermfg=59
set termguicolors
hi LineNr ctermbg=NONE guibg=NONE
