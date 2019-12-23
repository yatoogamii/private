
""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""Plugin"""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""

		call plug#begin()

        Plug 'valloric/youcompleteme'
        Plug 'tpope/vim-surround'                               " easy { [ ( :wq
        Plug 'vim-airline/vim-airline'
        Plug 'tpope/vim-repeat'
        Plug 'mattn/emmet-vim'                                  " Html
        Plug 'sirver/ultisnips'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'tpope/vim-commentary'
        Plug 'ervandew/supertab'
        Plug 'sjl/gundo.vim'
        Plug 'honza/vim-snippets'
        Plug 'ap/vim-css-color'
        Plug 'wellle/targets.vim'
        Plug 'chriskempson/base16-vim'
        Plug 'junegunn/gv.vim'
        Plug 'jiangmiao/auto-pairs'
        Plug 'alvan/vim-closetag'
        Plug 'xolox/vim-misc'
        Plug 'ryanoasis/vim-devicons'
        Plug 'easymotion/vim-easymotion'
        Plug 'etdev/vim-hexcolor'
        Plug 'mattn/webapi-vim'
        Plug 'rhysd/vim-healthcheck'
        Plug 'terryma/vim-multiple-cursors'
        Plug 'airblade/vim-gitgutter'
        Plug 'https://github.com/AndrewRadev/splitjoin.vim' " for gJ and gS join codeblock or reverse
        Plug 'https://github.com/AndrewRadev/sideways.vim' "for move something side left of right <c-l> <c-h>
        Plug 'pangloss/vim-javascript'
        " Plug 'w0rp/ale' " check syntax linting and fix files asynch with LSP
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'junegunn/fzf.vim'
        Plug 'leafgarland/typescript-vim'
        Plug 'peitalin/vim-jsx-typescript'
        Plug 'moll/vim-node'
        Plug 'othree/yajs.vim'
        Plug 'othree/javascript-libraries-syntax.vim'
        Plug 'kien/rainbow_parentheses.vim'
        Plug 'dart-lang/dart-vim-plugin'
        Plug 'thosakwe/vim-flutter'
        Plug 'pseewald/vim-anyfold'
        Plug 'rust-lang/rust.vim'
        Plug 'vim-syntastic/syntastic'
        Plug 'cespare/vim-toml'
        Plug 'burner/vim-svelte'

		call plug#end()

        """"""""""""""""""""""""""""""""""""""""""""""""""""
        """""""""""""""""""""Remapp"""""""""""""""""""""""""
        """"""""""""""""""""""""""""""""""""""""""""""""""""

        let mapleader=","

        map <up> <nop>
        map <down> <nop>
        map <left> <nop>
        map <right> <nop>

        map ,, <esc>
        imap ,, <esc>

        noremap <C-t> <C-]>
        noremap ç caw

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

        " disable shortcut Auto-pairs for enable î"
        let g:AutoPairsShortcutToggle     = 'π' " <m-p>
        let g:AutoPairsShortcutFastWrap   = '∑' " <m-w>
        let g:AutoPairsShortcutJump       = '∆' " <m-j>
        let g:AutoPairsShortcutBackInsert = '∫' " <m-b>
        let g:AutoPairsMoveCharacter = 'Ω' 

        " indent all file and go back where started editing.
        map <leader><leader>i mmgg=G`m


"""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""Command option""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""

       	"set number
        set nocompatible
        set relativenumber
        " without i cant delete with backspace
        set backspace=indent,eol,start
        filetype plugin on
        syntax on
        set t_Co=256
        set background=dark
        colorscheme base16-default-dark
        set showcmd                           "show command at bottom right
        let g:airline#extensions#tabline#enabled=1
        let g:airline_powerline_fonts = 1
        let g:airline_theme='deus'
        set laststatus=2                     "show status line
        set noshowmode
        set incsearch
        " show existing tab with 4 spaces width
        set tabstop=2
        " when indenting with '>', use 2 spaces width
        set shiftwidth=2
        " On pressing tab, insert 4 spaces
        set expandtab
        set scrolloff=19                     "page down with my cursor
        set cursorline                        "blink cursor line
        set ignorecase
        " set wrap
        " set tw=80
        " set wm=2
        let &showbreak ="↳ "
        set fileencodings+=utf-8
        set encoding=utf-8
        if (has("termguicolors"))
          set termguicolors
        endif
        set autoread                        " scss auto refresh main.css"
        au FocusGained,BufEnter * :silent! !
        set wildignore+=*.pdf,*.o,*.obj,*.jpg,*.png,*.class
        " let g:UltiSnipsSnippetsDir="~/.vim/my-snippets"
        let g:UltiSnipsSnippetDirectories=["UltiSnips", "my-snippets"]

        " make YCM compatible with UltiSnips (using supertab)
        let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
        let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
        let g:SuperTabDefaultCompletionType = '<C-n>'
        " better key bindings for UltiSnipsExpandTrigger
        let g:UltiSnipsExpandTrigger = "<tab>"
        let g:UltiSnipsJumpForwardTrigger = "<tab>"
        let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

        " Maintain undo history between sessions
        set undofile
        " Save folder undo history
        set undodir=~/.vim/undodir

        " Set this. Airline will handle the rest.
        let g:airline#extensions#ale#enabled = 1

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

        let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

        let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],
            \ ]

        let g:rbpt_loadcmd_toggle = 0

        au VimEnter * RainbowParenthesesToggle
        au Syntax * RainbowParenthesesLoadRound
        au Syntax * RainbowParenthesesLoadSquare
        au Syntax * RainbowParenthesesLoadBraces

        " Typescript
        
        " set filetypes as typescript.tsx
        autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

        " dark red
        hi tsxTagName guifg=#E06C75

        " orange
        hi tsxCloseString guifg=#F99575
        hi tsxCloseTag guifg=#F99575
        hi tsxAttributeBraces guifg=#F99575
        hi tsxEqual guifg=#F99575
        
        " yellow
        hi tsxAttrib guifg=#F8BD7F cterm=italic"

        " light-grey
        hi tsxTypeBraces guifg=#999999
        " dark-grey
        hi tsxTypes guifg=#666666"

        hi ReactState guifg=#C176A7
        hi ReactProps guifg=#D19A66
        hi Events ctermfg=204 guifg=#56B6C2
        hi ReduxKeywords ctermfg=204 guifg=#C678DD
        hi WebBrowser ctermfg=204 guifg=#56B6C2
        hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66

        "-- FOLDING --
        filetype plugin indent on " required
        autocmd Filetype * AnyFoldActivate               " activate for all filetypes

        " set foldlevel=0  " close all folds
        " or
        set foldlevel=99 " Open all folds

        " comment .tsx file with {/* *}
        autocmd FileType typescript.tsx setlocal commentstring={/*\ %s\ */}

        " use RustFmt for format Rust code
        let g:rustfmt_autosave = 1

        " syntastic config basic
        set statusline+=%#warningmsg#
        set statusline+=%{SyntasticStatuslineFlag()}
        set statusline+=%*
        
        let g:syntastic_always_populate_loc_list = 1
        let g:syntastic_auto_loc_list = 1
        let g:syntastic_check_on_open = 1
        let g:syntastic_check_on_wq = 0

        """"""""""""""""""""""""""""""""""""""""""""""""""""
        """"""""""""""""""""""Macro""""""""""""""""""""""""
        """"""""""""""""""""""""""""""""""""""""""""""""""""
