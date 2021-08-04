" Disable default mappings
let g:nnn#set_default_mappings = 0

" Set custom mappings
nnoremap <silent> <leader>nn :NnnPicker<CR>

" Start n³ in the current file's directory
nnoremap <leader>n :NnnPicker %:p:h<CR>

" Floating window.
let g:nnn#layout = { 'window': { 'width': 0.5, 'height': 0.6, 'highlight': 'Debug' } }

" use the same n³ session within a vim session
let g:nnn#session = 'local'
