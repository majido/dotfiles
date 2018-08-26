" disable vi compat mode
set nocompatible

"Set terminal as coloured even when using screen
set t_Co=256

filetype off   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ctrlp.vim'
Plugin 'quickopen'
Plugin 'a.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

" Enable tabline for airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="dark"

" Always show status bar
:set laststatus=2

" Ctrlp Custom find tool
" Find all source files ignoring thrid_party except third_party/WebKit
"let g:ctrlp_user_command = 'find %s -type f \( -not \( -path "*/third_party/*"  -o -path "*/out/*" \) -o -path "*/third_party/WebKit/*" \)'
"let g:ctrlp_user_command = find %s -regex '.*\.\(h\|hpp\|cpp\|c\|cc\|cpp\|inl\|grd\|grdp\|idl\|in\|m\|mm\|py\|sh\|cfg\|tac\|go\|gyp\|gypi\|isolate\|java\|js\|html\|css\|ebuild\|pl\|pm\|yaml\|gn\|gni\|json\)' \( -not \( -path '*/third_party/*'  -o -path '*/out/*' \) -o -path '*/third_party/WebKit/*' \)"


source /usr/share/vim/google/google.vim

Glug youcompleteme-google
Glug relatedfiles


filetype plugin indent on
syntax on

set colorcolumn=80
set number

" shortcuts
"  ,f ,fc=implementation ,fh=header
Glug relatedfiles plugin[mappings]=',f'

" Use jk instead of <Esc>
inoremap jk <Esc>

" Disable arrow keys. BREAK THE HABBIT
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Disable indentation for local file using F8
nnoremap <F8> :setl noai nocin nosi inde=<CR>

"Ctrl-W does not work in chrome os as it conflict with browser. Create new
"shortcuts to address these
nmap <silent> ,<Down> :wincmd j<CR>
nmap <silent> ,<Up> :wincmd k<CR>




