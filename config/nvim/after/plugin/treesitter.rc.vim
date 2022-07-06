if !exists('g:loaded_nvim_treesitter')
echom "Not loaded treesitter"
finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "ruby",
    "tsx",
    "fish",
    "php",
    "json",
    "yaml",
    "html",
    "scss"
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    }
  },
--  autotag = {
--    enable = true,
--  },
  matchup = {
    enable = true
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=99

" Match up TODO: break to separate file
let g:matchup_matchparen_offscreen = {'method': 'popup'}
let g:matchup_transmute_enabled = 1
nnoremap <C-f> :<C-u>MatchupWhereAmI?<cr>
