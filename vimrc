" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Initialize plugin system
call plug#end()

" Put your non-Plugin stuff after this line
syntax on

set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
"set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set hlsearch      " highlight all search matches
hi Search guibg=LightBlue
set pastetoggle=<F10>

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" change color of the cursor
" au InsertLeave * hi Cursor guibg=Red
" au InsertLeave * hi Cursor guibg=green

" Plugin indentLine settings. 
let g:indentLine_char = "┆" 
let g:indentLine_enabled = 1 
let g:autopep8_disable_show_diff=1 

" Plugin YCM settings. 
set completeopt=longest,menu 
let g:ycm_min_num_of_chars_for_completion=2 
let g:ycm_cache_omnifunc=0 
let g:ycm_seed_identifiers_with_syntax=1 
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1 
let g:ycm_collect_identifiers_from_comments_and_strings = 0 
" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py' 
let g:syntastic_check_on_open=1 
let g:syntastic_enable_signs=1 
let g:syntastic_cpp_check_header = 1 
let g:syntastic_cpp_remove_include_errors = 1  

" Plugin syntastic settings.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
