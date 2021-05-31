" builtin plugin
let loaded_netrw=0
let g:omni_sql_no_default_maps=1    " disable omni sql completion

" vim rooter
let g:rooter_patterns = ['.git', 'Makefile', '*.sln', 'build/env.sh', '.idea', 'src']
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_resolve_links = 1

" rainbow brackets
let g:rainbow_active = 1

" float term
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

" telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" gitsigns
lua require('gitsigns').setup()

" treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true
  }
}
EOF

" lua line
" lua << EOF
" require('lualine').setup{
"   sections = {
"     lualine_a = {'mode'},
"     lualine_b = {'branch', 'diff'},
"     lualine_c = {'filename', require'lsp-status'.status
"     },
"     lualine_x = {'encoding', 'fileformat', 'filetype'},
"     lualine_y = {'progress'},
"     lualine_z = {'location'}
"   }
" }
