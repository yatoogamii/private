"""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""Plugin"""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()
" surround word or line with what you want
Plug 'tpope/vim-surround'
" use dot '.' for repeat last action
Plug 'tpope/vim-repeat'
" snippets html / css tringer with ctrl+y+,
Plug 'mattn/emmet-vim'
" theme
Plug 'dikiaap/minimalist'
Plug 'vim-airline/vim-airline'
" fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" comment vim
Plug 'tpope/vim-commentary'
" auto pairs with ' " ( { [
Plug 'jiangmiao/auto-pairs'
" prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" replace space by dot ( . )
Plug 'Yggdroot/indentLine'
" linter
Plug 'w0rp/ale'
" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" snippet engine
Plug 'SirVer/ultisnips'
" snippets 
Plug 'honza/vim-snippets'
" window with snippets in 
Plug 'ycm-core/YouCompleteMe'
" multi cursor
Plug 'terryma/vim-multiple-cursors'
" easy motions
Plug 'easymotion/vim-easymotion'
" change into {} ()
Plug 'wellle/targets.vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""Remapp"""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""

" change leader
let mapleader=","

" disabled arrows keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" use double ',' for exit insert mode
map ,, <esc>
imap ,, <esc>

" indent all file and go back where started editing.
map <leader><leader>i mmgg=G`m

"""""""""""""
"""" FZF """"
"""""""""""""
let g:fzf_action = {
                        \ 'enter': 'tab split',
                        \ 'ctrl-x': 'split',
                        \ 'ctrl-v': 'vsplit' }
nnoremap <c-f> :Files<CR>
nnoremap <C-g> :Rg<Cr>
nnoremap <C-c> :Commits<Cr>
nnoremap <C-b> :Buffers<Cr>
nnoremap <C-l> :Lines<Cr>
nnoremap <C-h> :History<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
nmap <Leader>' :Marks<CR>
nmap <Leader>H :Helptags!<CR>

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" Customize fzf colors to match your color scheme
let g:fzf_colors =
                        \ { 'fg':      ['fg', 'Normal'],
                        \ 'bg':      ['bg', 'Normal'],
                        \ 'hl':      ['fg', 'Comment'],
                        \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
                        \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
                        \ 'hl+':     ['fg', 'Statement'],
                        \ 'info':    ['fg', 'PreProc'],
                        \ 'border':  ['fg', 'Ignore'],
                        \ 'prompt':  ['fg', 'Conditional'],
                        \ 'pointer': ['fg', 'Exception'],
                        \ 'marker':  ['fg', 'Keyword'],
                        \ 'spinner': ['fg', 'Label'],
                        \ 'header':  ['fg', 'Comment'] }

" Easy window movement and creation  https://vimrcfu.com/snippet/266
" leader + (hh)(jj)(kk)(ll)
function! MoveOrCreateWindow(key) abort
        let t:curwin = winnr()
        exec "wincmd ".a:key
        if (t:curwin == winnr())
                if (match(a:key,'[jk]'))
                        wincmd v
                else
                        wincmd s
                endif
                exec "wincmd ".a:key
        endif
endfunction

nnoremap <silent> <Leader>hh :call MoveOrCreateWindow('h')<CR>
nnoremap <silent> <Leader>jj :call MoveOrCreateWindow('j')<CR>
nnoremap <silent> <Leader>kk :call MoveOrCreateWindow('k')<CR>
nnoremap <silent> <Leader>ll :call MoveOrCreateWindow('l')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""Command option""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""

" need for share vimrc and use it with other system
set nocompatible
set relativenumber
syntax on
" without i cant delete with space
set backspace=indent,eol,start
" Any options that are defined for a filetype will be set with ':set'
filetype plugin on
" show command at bottom right
set showcmd
set incsearch
set ignorecase
" tab with 2 spaces
set tabstop=2
" tab with 2 spaces when use '>'
set shiftwidth=2
" convert spaces to tab
set expandtab
" page down with cursor
set scrolloff=19
" blink cursor line
set cursorline
" break line with "↳ " symbol
let &showbreak ="↳ "
" the encoding written to file
set fileencodings+=utf-8
" the encoding displayed
set encoding=utf-8
" Maintain undo history between sessions
set undofile
" Save folder undo history
set undodir=~/.vim/undodir

"""""""""""""""""""""""
""" theme and color """
"""""""""""""""""""""""
set termguicolors
set t_Co=256
colorscheme minimalist
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""
""" Prettier config """
"""""""""""""""""""""""

" auto prettier when save
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
let g:prettier#config#parser = 'typescript'

"""""""""""""""""""""""
""""" indentLine  """""
"""""""""""""""""""""""
let g:indentLine_char = '·'

"""""""""""""""""""""""
"""""""" Ale """"""""""
"""""""""""""""""""""""

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

"""""""""""""""""""""""
"""""" Snippets """""""
"""""""""""""""""""""""

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
