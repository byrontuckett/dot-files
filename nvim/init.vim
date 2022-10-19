source $HOME/.config/nvim/vim-plug/plugins.vim

nnoremap <C-p> :Files<Cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>:Telescope find_files<cr>
nnoremap <leader>fg <cmd>:Telescope live_grep<cr>
nnoremap <leader>fb <cmd>:Telescope buffers<cr>
nnoremap <leader>fh <cmd>:Telescope help_tags<cr>
nnoremap <leader>d  <cmd>:bd<cr>
nnoremap <Leader>q" ciw""<Esc>P
nnoremap <Leader>q' ciw''<Esc>P
nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P
set nu
set relativenumber
set scrolloff=8
