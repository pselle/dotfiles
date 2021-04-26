" Load vim-plug
call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'kien/rainbow_parentheses.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-sleuth'

" Scala
Plug 'derekwyatt/vim-scala'

" Elm
Plug 'andys8/vim-elm-syntax'

" Vue.js
Plug 'posva/vim-vue'

" Typescript
Plug 'leafgarland/typescript-vim'

" Docker
Plug 'ekalinin/Dockerfile.vim'

" Go
Plug 'benmills/vim-golang-alternate'
Plug 'fatih/vim-go'

" HCL
Plug 'fatih/vim-hclfmt'
Plug 'b4b4r07/vim-hcl'

" Rego
Plug 'tsandall/vim-rego'

" cfengine
Plug 'neilhwatson/vim_cf3'

" pug/stylus
Plug 'digitaltoad/vim-pug'
Plug 'wavded/vim-stylus'

" powershell
Plug 'PProvost/vim-ps1'

Plug 'ruanyl/vim-gh-line'

call plug#end()

syntax on

" Golang
let g:go_fmt_command = "goimports"
autocmd FileType go set listchars=tab:\ \ ,trail:·,extends:>,precedes:<

"gg=G to reformat ugly XML
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

" highlight trailing whitespace
highlight! link ExtraWhitespace Todo
autocmd BufWinEnter,InsertLeave * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufWinLeave * call clearmatches()

" Highlight long rows
highlight OverLength ctermbg=Magenta ctermfg=white guibg=#592929
match OverLength /\%81v./

" Show dotfiles in NERDTree
let NERDTreeShowHidden=1

map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>

au BufNewFile,BufRead *.rhtml set syn=eruby
au BufNewFile,BufRead *.ftl set syn=ftl
au BufNewFile,BufRead *.pde set syn=pde
au BufNewFile,BufRead Rakefile set syn=ruby
au BufNewFile,BufRead Gemfile set syn=ruby
au BufNewFile,BufRead config.ru set syn=ruby
au BufNewFile,BufRead Vagrantfile set syn=ruby
au BufNewFile,BufRead *.builder set syn=ruby
au BufNewFile,BufRead *.jbuilder set syn=ruby
au BufNewFile,BufRead *.pp set syn=ruby
au BufNewFile,BufRead *.json set syn=javascript
au BufNewFile,BufRead *.bats set syn=sh

" rainbow_parentheses.vim
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
  \ ['brown',       'RoyalBlue3'],
  \ ['Darkblue',    'SeaGreen3'],
  \ ['darkgreen',   'firebrick3'],
  \ ['darkcyan',    'RoyalBlue3'],
  \ ['darkred',     'SeaGreen3'],
  \ ['darkmagenta', 'DarkOrchid3'],
  \ ['brown',       'firebrick3'],
  \ ['darkmagenta', 'DarkOrchid3'],
  \ ['Darkblue',    'firebrick3'],
  \ ['darkgreen',   'RoyalBlue3'],
  \ ['darkcyan',    'SeaGreen3'],
  \ ['darkred',     'DarkOrchid3'],
  \ ['red',         'firebrick3'],
  \ ]

" CTRL-P opens in tab
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

let g:rbpt_max = len(g:rbpt_colorpairs)
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']
let g:syntastic_javascript_checkers = ['eslint']

" jump to a matching opening or closing parenthesis, square bracket or a curly brace
noremap % v%

set visualbell
set nowrap
set background=dark
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set number
set showcmd
set ruler
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list
set mouse=a
set nobackup
set noswapfile
set paste

" Searching
set hlsearch
set ignorecase
nmap <silent> ,/ :nohlsearch<CR>
