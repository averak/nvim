if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/Users/abetatsuya/.config/nvim/dein/repos/github.com/Shougo/dein.vim/,/Users/abetatsuya/.config/nvim,/etc/xdg/nvim,/Users/abetatsuya/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.4.2/share/nvim/runtime,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/abetatsuya/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/abetatsuya/.config/nvim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/abetatsuya/.config/nvim/init.vim', '/Users/abetatsuya/.config/nvim/dein/local/plugins.toml', '/Users/abetatsuya/.config/nvim/dein/local/plugins_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/abetatsuya/.config/nvim/dein'
let g:dein#_runtime_path = '/Users/abetatsuya/.config/nvim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/abetatsuya/.config/nvim/dein/.cache/init.vim'
let &runtimepath = '/Users/abetatsuya/.config/nvim/dein/repos/github.com/Shougo/dein.vim/,/Users/abetatsuya/.config/nvim,/etc/xdg/nvim,/Users/abetatsuya/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/abetatsuya/.config/nvim/dein/repos/github.com/junegunn/fzf,/Users/abetatsuya/.config/nvim/dein/repos/github.com/neoclide/coc.nvim_release,/Users/abetatsuya/.config/nvim/dein/repos/github.com/Shougo/dein.vim,/Users/abetatsuya/.config/nvim/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.4.2/share/nvim/runtime,/Users/abetatsuya/.config/nvim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/abetatsuya/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/abetatsuya/.config/nvim/after'
filetype off
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline#extensions#term#enabled = 0
let g:airline#extensions#nerdtree_statusline = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme = 'dark'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
nnoremap <silent> <C-p> :PrevimOpen<CR>
let g:vim_markdown_folding_disabled = 1
let g:previm_enable_realtime = 1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1
let g:loaded_syntastic_python_pylint_checker = 0
call gina#custom#command#option('status', '--opener', 'vsplit')
call gina#custom#command#option('diff', '--opener', 'vsplit')
let g:ale_lint_on_text_changed = 0
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:airline#extensions#ale#open_lnum_symbol = '('
let g:airline#extensions#ale#close_lnum_symbol = ')'
let g:ale_echo_msg_format = '[%linter%]%code: %%s'
highlight link ALEErrorSign Tag
highlight link ALEWarningSign StorageClass
syntax enable
colorscheme gotham256
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 30
let NERDTreeShowHidden=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
autocmd BufWritePre * :FixWhitespace
let g:NERDTreeMapOpenInTab='d'
map <Leader>dir :NERDTreeToggle<CR>
map <Leader>go :QuickRun<CR>
let g:quickrun_config={'*': {'split': ''}}
highlight CocErrorSign ctermfg=15 ctermbg=196
highlight CocWarningSign ctermfg=0 ctermbg=172
nmap <silent> <space><space> :<C-u>CocList<cr>
nmap <silent> <space>h :<C-u>call CocAction('doHover')<cr>
nmap <silent> <space>df <Plug>(coc-definition)
nmap <silent> <space>rf <Plug>(coc-references)
nmap <silent> <space>rn <Plug>(coc-rename)
nmap <silent> <space>fmt <Plug>(coc-format)
