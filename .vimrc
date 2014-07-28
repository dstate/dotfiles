"
" Romain "dreamstate" Pichot
"   vim configuration file
"
set nocompatible                                " Disable vi-compatibility

execute pathogen#infect()

map <C-b> :NERDTreeToggle<CR>                   " NERDTree toggle shortcut
map <C-c> <Leader>c                             " NERDCommenter toggle shortcut

"let g:UltiSnipsExpandTrigger="<c-j>"            " UltiSnips trigger snippet
"let g:UltiSnipsJumpForwardTrigger="<c-j>"       " UltiSnips next snippet area
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"      " UltiSnips last snippet area

let g:airline_theme = "powerlineish"            " Setting airline theme

let g:nerdtree_tabs_open_on_console_startup = 1 " NERDTreeTabs started at launch

let g:indent_guides_enable_on_vim_startup = 1   " Indent guides started at lauch
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=237

syntax on                                       " Activates syntax coloring

let g:molokai_original = 1                      " Keep original molokai theme
:colorscheme molokai                            " Color theme inspired by TextMate

set cindent                                     " C indentation style
set autoindent                                  " Indents automatically on newlines
filetype plugin indent on                       " File type detection

set tabstop=4                                   " Number of spaces for a tab
set shiftwidth=4                                " Number of spaces for each step of indentation
set softtabstop=4                               " Number of spaces for a tab while editing
set expandtab                                   " Replace a tab by spaces
set list listchars=tab:→\ ,trail:·              " Show tabs and trailing spaces

set laststatus=2                                " Always show the statusline
set encoding=utf-8                              " Unicode
set t_Co=256                                    " Tells vim that the terminal supports 256 colors
set cursorline                                  " Highlights current line
set number                                      " Shows line numbers on the left
set colorcolumn=81                              " Highlights column 81 of the current line

set incsearch                                   " Starts searching while typing (incremental search)
set hlsearch                                    " Highlights search results

set wildmenu                                    " Shows menu with command autocompletes results
set wildmode=longest:full                       " Command autocomplete shell like

set backspace=2                                 " Backspacing works in every case
