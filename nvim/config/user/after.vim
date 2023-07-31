" Called after everything just before setting a default colorscheme
" Configure you own bindings or other preferences. e.g.:

" set nonumber " No line numbers
" let g:gitgutter_signs = 0 " No git gutter signs
" let g:SignatureEnabledAtStartup = 0 " Do not show marks
" nmap s :MultipleCursorsFind
colorscheme base16-gruvbox-dark-hard
" colorscheme base16-gruvbox-light-hard
" set background=light
" let g:lightline['colorscheme'] = 'gruvbox'

" Indentation
set expandtab             " Tabs are spaces, not tabs
set shiftwidth=2        " Use indents of 2 spaces
set softtabstop=2        " Let backspace delete indent
set tabstop=2             " An indentation every four columns

" ...

" post install (yarn install | npm install) then load plugin only for editing supported files

scriptencoding utf-8

" let g:ale_sign_error = '✘'
" let g:ale_sign_warning = '➤'
" let g:ale_sign_info = '➟'
" let g:ale_echo_msg_format = 'ALE %code: %%s'


" let g:ale_virtualtext_cursor = 1
" let g:ale_virtualtext_prefix = '▬▶  '

" let g:ale_hover_cursor = 0
" let g:ale_echo_cursor = 1
" let g:ale_fix_on_save = 1
" let g:ale_disable_lsp = 1
" let g:ale_set_loclist = 0

" highlight link ALEVirtualTextError ErrorMsg
" highlight link ALEVirtualTextStyleError ALEVirtualTextError
" highlight link ALEVirtualTextWarning WarningMsg
" highlight link ALEVirtualTextInfo ALEVirtualTextWarning
" highlight link ALEVirtualTextStyleWarning ALEVirtualTextWarning

" let g:ale_fixers = {
" \   'typescript': ['prettier', 'eslint'],
" \   'javascript': ['prettier', 'eslint'],
" \}

" let g:ale_linters = {
" \   'go': ['golangci-lint'],
" \   'typescript': ['prettier', 'eslint'],
" \   'javascript': ['prettier', 'eslint'],
" \   'ruby': ['rubocop', 'ruby'],
" \   'proto': [],
" \}

" " This gets around typecheck errors for types defined in other files in the
" " same package
" let g:ale_go_golangci_lint_package = 1
" let g:ale_go_golangci_lint_options = '--fast'

" " Enable completion where available.
" let g:ale_completion_enabled = 0
