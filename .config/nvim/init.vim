" Descriptions for options pulled from:
" http://vimdoc.sourceforge.net/htmldoc/options.html

call plug#begin()

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

" Syntax highlighting enables Vim to show parts of the text in another font or
" color. Those parts can be specific keywords or text matching a pattern. Vim
" doesn't parse the whole file (to keep it fast), so the highlighting has its
" limitations. Lexical highlighting might be a better name, but since
" everybody calls it syntax highlighting we'll stick with that.
syntax on

" Load color scheme {name}.  This searches 'runtimepath'
" for the file "colors/{name}.vim.  The first one that
" is found is loaded.
"colorscheme permafrost
colorscheme molokai

" When set to "dark", Vim will try to use colors that look good on a dark
" background. When set to "light", Vim will try to use colors that look good
" on a light background. Any other value is illegal. Vim tries to set the
" default value according to the terminal used.
set background=dark

" The value of this option influences when the last window will have a status
" line:
"   0: never
"   1: only if there are at least two windows
"   2: always
set laststatus=0

" In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
" Spaces are used in indents with the '>' and '<' commands and when
" 'autoindent' is on. To insert a real tab when 'expandtab' is on, use
" CTRL-V<Tab>.
set expandtab

" Number of spaces that a <Tab> in the file counts for. Also see the ':retab'
" command, and 'softtabstop' option.
set tabstop=2

" Number of spaces to use for each step of (auto)indent.
set shiftwidth=2

" Enable the use of the mouse.
set mouse=a

" Show the line number relative to the line with the cursor in front of
" each line. Relative line numbers help you use the |count| you can
" precede some vertical motion commands (e.g. j k + -) with, without
" having to calculate it yourself. Especially useful in combination
" with other commands (e.g. y d c < > gq gw =).
set relativenumber

" Print the line number in front of each line.  When the 'n' option is
" excluded from 'cpoptions' a wrapped line will not use the column of
" line numbers (this is the default when 'compatible' isn't set). The
" 'numberwidth' option can be used to set the room used for the line
" number.
set number

" While typing a search command, show where the pattern, as it was typed
" so far, matches.  The matched string is highlighted.  If the pattern
" is invalid or not found, nothing is shown.  The screen will be updated
" often, this is only useful on fast terminals.
set incsearch

" Stop the highlighting for the 'hlsearch' option.  It is automatically
" turned back on when using a search command, or setting the 'hlsearch'
" option.
set nohlsearch

" When on, lines longer than the width of the window will wrap and
" displaying continues on the next line.  When off lines will not wrap
" and only part of long lines will be displayed.  When the cursor is
" moved to a part that is not shown, the screen will scroll horizontally.
set nowrap

" Show the line and column number of the cursor position, separated by a
" comma.  When there is room, the relative position of the displayed
" text in the file is shown on the far right:
"   Top - first line is visible
"   Bot - last line is visible
"   All - first and last line are visible
"   45% - relative position in the file
set ruler

" When off a buffer is unloaded when it is |abandon|ed.  When on a
" buffer becomes hidden when it is |abandon|ed.  If the buffer is still
" displayed in another window, it does not become hidden, of course.
set hidden

" Vim can detect the type of file that is edited. This is done by checking the
" file name and sometimes by inspecting the contents of the file for specific
" text.
filetype plugin indent on

" Enable use of the system clipboard for copypasta.
set clipboard+=unnamedplus

" Enable Omnicompletion
set omnifunc=syntaxcomplete#Complete
"let g:SuperTabDefaultCompletionType="<c-x><c-o>"

" Enable async auto-completion: https://github.com/Shougo/deoplete.nvim
" NOTE may need to run UpdateRemotePlugins on first start
let g:deoplete#enable_at_startup = 1

" Enable racer-based rust completion.
let g:deoplete#sources#rust#racer_binary='/Users/mark/.cargo/bin/racer'
