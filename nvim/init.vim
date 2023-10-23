" Specify a directory for plugins
call plug#begin()
" Themes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" UI
Plug 'scrooloose/nerdtree'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'johnstef99/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" Code formater, syntax highlight
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot' " syntax highlight
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'ap/vim-css-color'
Plug 'dart-lang/dart-vim-plugin'
Plug 'prisma/vim-prisma'

" Intellisense, snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'dominikduda/vim_es7_javascript_react_snippets'
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'OmniSharp/omnisharp-vim'
Plug 'tomlion/vim-solidity'

" Code Utils
Plug 'preservim/nerdcommenter'
"Plug 'tomtom/tcomment_vim'
Plug 'AndrewRadev/tagalong.vim' " rename html tags
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'valloric/MatchTagAlways'
"Plug 'leafOfTree/vim-matchtag'

" Debugger
Plug 'puremourning/vimspector'

" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git Utils
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'airblade/vim-gitgutter'
Plug 'itchyny/vim-gitbranch'

" Utilities
Plug 'christoomey/vim-tmux-navigator' " navigate between panels
Plug 'Shougo/context_filetype.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'psliwka/vim-smoothie'
Plug 'easymotion/vim-easymotion'
Plug 'dense-analysis/ale'
" Plug 'voldikss/vim-floaterm'

" Initialize plugin system
call plug#end()

" Disable space behavior
nnoremap <SPACE> <Nop>
" remap leader key to space
let mapleader = "\<Space>"

nnoremap J 5j
nnoremap K 5k
nnoremap H Hzz
nnoremap L Lzz
nnoremap <leader>j J
inoremap jk <ESC>
inoremap kj <ESC>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
nnoremap <leader>/ :noh<CR>
nnoremap <M-Up> ddkP
nnoremap <M-Down> ddjP
vnoremap <M-Up> dkP
vnoremap <M-Down> djP
nnoremap cc "_cc
vnoremap p "_dp

imap <C-j> <CR>
nmap <C-a> ggVG
map <Enter> o<ESC>
map <S-Enter> O<ESC>
map <silent> <expr> <leader>ma (expand('%') =~ 'NERD_tree' ? "" : "\<c-w>\<c-w>")."ma"
map <silent> <expr> <leader>md (expand('%') =~ 'NERD_tree' ? "" : "\<c-w>\<c-w>")."md"

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Set vim default flags
set mouse=a                 " enable mouse
set number                  " show line number
set hidden                  " allow open new buffer without save current buffer
set cursorline
set expandtab
set autoindent
set smartindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set encoding=utf8
set history=5000
set clipboard=unnamedplus
set updatetime=300
" set cmdheight=2
set shortmess+=c            " don't give |ins-completion-menu| messages.
set signcolumn=yes          " always show signcolumns
set colorcolumn=80
set relativenumber
set autochdir
set ignorecase
set laststatus=2
set showtabline=2
set nohlsearch
set noswapfile
"set nowrap
"set foldmethod=syntax


" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
 "autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.svelte PrettierAsync


" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <C-s> :w<CR>
nnoremap <C-Q> :qa!<CR>

" shift+arrow selection
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

" vmap <C-c> y<Esc>i
" vmap <C-x> d<Esc>i
" map <C-v> pi
" imap <C-v> <Esc>pi

" Tab, status bar theme settings
"let g:material_terminal_italics = 1
"let g:material_theme_style = 'default' " 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
"let g:airline_theme = 'papercolor'
"let g:airline_solarized_bg = 'dark'
let g:lightline = {
      "\ 'colorscheme': 'selenized_dark',
      \ 'colorscheme': 'ayu_dark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ }
      \ }
let g:lightline#bufferline#clickable = 1
let g:lightline.component_raw = {'buffers': 1}

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'gitbranch_path'), ':h:h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif

"colorscheme solarized8_high
colorscheme ayu


" Transparent terminal background
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

" Start NERDTree settings
" Open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd BufEnter NERD_tree* :LeadingSpaceDisable

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
    \ "Staged"    : "#0ee375",
    \ "Modified"  : "#d9bf91",
    \ "Renamed"   : "#51C9FC",
    \ "Untracked" : "#FCE77C",
    \ "Unmerged"  : "#FC51E6",
    \ "Dirty"     : "#FFBD61",
    \ "Clean"     : "#87939A",
    \ "Ignored"   : "#808080"
    \ }
let g:NERDTreeIgnore = ['^node_modules$', '^.git$', '^.DS_Store$']
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeCascadeSingleChildDir=0
let NERDTreeShowHidden=1

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

nnoremap <leader>n :NERDTreeToggle<CR>
nmap <leader>\ <C-\>
let NERDTreeMapActivateNode='<leader><space>'

let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
" End NERDTree settings


" Start Coc settings
"let g:coc_global_extensions = [
  "\ 'coc-snippets',
  "\ 'coc-pairs',
  "\ 'coc-tsserver',
  "\ 'coc-eslint',
  "\ 'coc-prettier',
  "\ 'coc-json'
  "\ ]

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Use <Tab> and <S-Tab> to navigate the completion list
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" make <cr> select the first completion item and confirm the completion when no item has been selected
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
"inoremap <silent><expr> <C-j> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<Tab>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> gK :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
" Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <C-d> <Plug>(coc-range-select)
" xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" Using CocList
" Show all diagnostics
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>i
" End Coc settings

" airline settings
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
"let g:airline_statusline_ontop=0
" let g:airline_theme='base16_twilight'
"let g:airline#extensions#tabline#formatter = 'default'
" airline navigation
"nnoremap <M-Right> :bn<cr>      " Alt+Right
"nnoremap <M-Left> :bp<cr>       " Alt+Left
"nmap <c-{> :bn<cr>
"nmap <c-}> :bp<cr>
"nnoremap <leader>[ :bp<cr>
"nnoremap <leader>] :bn<cr>
nnoremap <silent> <expr> <c-[> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":bp<CR>"
nnoremap <silent> <expr> <c-]> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":bn<CR>"
nnoremap <c-x> :bp \|bd #<cr>   " close current buffer

" Setting fzf search file from root git directory
" set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
"let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path '**node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
let $FZF_DEFAULT_COMMAND="find . -path '*/\.*' -type d -prune -o -path '**node_modules/**' -prune -o -type f -print -o -type l -print 2> /dev/null | sed s/^..//"

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! -bang -nargs=* PRg
  \ call fzf#vim#grep("rg --hidden --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'dir': system('git -C '.expand('%:p:h').' rev-parse --show-toplevel 2> /dev/null')[:-2]}, <bang>0)

command! ProjectFiles execute 'Files' s:find_git_root()
nnoremap <silent> <expr> <c-space> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":ProjectFiles<CR>"
nnoremap <silent> <expr> <c-f> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":PRg<CR>"

" remove trailing whitespace on save
"autocmd BufWritePre * %s/\s\+$//e

let g:tagalong_additional_filetypes = ['svelte']

" Settings: context_filetype

 if !exists('g:context_filetype#same_filetypes')
   let g:context_filetype#filetypes = {}
 endif

 let g:context_filetype#filetypes.svelte =
 \ [
 \   {'filetype' : 'javascript', 'start' : '<script \?.*>', 'end' : '</script>'},
 \   {
 \     'filetype': 'typescript',
 \     'start': '<script\%( [^>]*\)\? \%(ts\|lang="\%(ts\|typescript\)"\)\%( [^>]*\)\?>',
 \     'end': '',
 \   },
 \   {'filetype' : 'css', 'start' : '<style \?.*>', 'end' : '</style>'},
 \ ]

 let g:ft = ''

" " Settings: NERDCommenter

let g:NERDCustomDelimiters = { 'html': { 'left': '<!--', 'right': '-->' } }

fu! NERDCommenter_before()
  if (&ft == 'html') || (&ft == 'svelte')
  let g:ft = &ft
  let cfts = context_filetype#get_filetypes()
  if len(cfts) > 0
    if cfts[0] == 'svelte'
      let cft = 'html'
    elseif cfts[0] == 'scss'
      let cft = 'css'
    else
      let cft = cfts[0]
    endif
    exe 'setf ' . cft
    endif
  endif
endfu

fu! NERDCommenter_after()
  if (g:ft == 'html') || (g:ft == 'svelte')
  exec 'setf ' . g:ft
  let g:ft = ''
  endif
endfu

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.ts,*.jsx,*.tsx'
let g:closetag_emptyTags_caseSensitive = 1

let g:dart_style_guide = 2

let g:UltiSnipsExpandTrigger='<c-c>'

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview', 'popup'
" and 'popuphidden' if you don't want to see any documentation whatsoever.
" Note that neovim does not support `popuphidden` or `popup` yet:
" https://github.com/neovim/neovim/issues/10996
if has('patch-8.1.1880')
  set completeopt=longest,menuone,popuphidden
  " Highlight the completion documentation popup background/foreground the same as
  " the completion menu itself, for better readability with highlighted
  " documentation.
  set completepopup=highlight:Pmenu,border:off
else
  set completeopt=longest,menuone,preview
  " Set desired preview window height for viewing documentation.
  set previewheight=5
endif

" Tell ALE to use OmniSharp for linting C# files, and no other linters.
let g:ale_linters = { 'cs': ['OmniSharp'] }

augroup omnisharp_commands
  autocmd!

  " Show type information automatically when the cursor stops moving.
  " Note that the type is echoed to the Vim command line, and will overwrite
  " any other messages in this space including e.g. ALE linting messages.
  autocmd CursorHold *.cs OmniSharpTypeLookup

  " The following commands are contextual, based on the cursor position.
  autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfu <Plug>(omnisharp_find_usages)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfi <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ospd <Plug>(omnisharp_preview_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ospi <Plug>(omnisharp_preview_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osd <Plug>(omnisharp_documentation)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
  autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

  " Navigate up and down by method/property/field
  autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
  autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
  " Find all code errors/warnings for the current solution and populate the quickfix window
  autocmd FileType cs nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)
  " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
  autocmd FileType cs xmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
  " Repeat the last code action performed (does not use a selector)
  autocmd FileType cs nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
  autocmd FileType cs xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

  autocmd FileType cs nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)

  autocmd FileType cs nmap <silent> <buffer> <Leader>osnm <Plug>(omnisharp_rename)

  autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
augroup END

" Enable snippet completion, using the ultisnips plugin
 "let g:OmniSharp_want_snippet=1

" valloric/matchTagAlways filetypes setting
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascriptreact' : 1,
    \ 'typescriptreact' : 1,
    \}
nnoremap <leader>% :MtaJumpToOtherTag<cr>

"let g:vim_matchtag_enable_by_default = 1
"let g:vim_matchtag_files = '*.html,*.xml,*.js,*.jsx,*.ts,*.tsx,*.vue,*.svelte,*.jsp'

"let g:vimspector_base_dir='/Users/trungdam/.local/share/nvim/plugged/vimspector'
let g:vimspector_enable_mappings = 'HUMAN'
" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

" nnoremap <silent> <Leader>ft   :FloatermToggle<CR>
" tnoremap <silent> <Leader>ft  <C-\><C-n>:FloatermToggle<CR>

inoremap <expr> <cr> getline('.')[col('.') - 1 - 1:col('.')-1] == '><' ? '<cr><c-o>O': '<cr>'
