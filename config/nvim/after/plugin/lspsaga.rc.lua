local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.init_lsp_saga()

vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', { silent = true,noremap = true })
vim.keymap.set('v', '<leader>ca', '<cmd><C-U>Lspsaga range_code_action<CR>', { silent = true,noremap = true })

vim.keymap.set('n', '[d', require('lspsaga.diagnostic').goto_prev, { silent = true, noremap =true })
vim.keymap.set('n', ']e', require('lspsaga.diagnostic').goto_next, { silent = true, noremap =true })

vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', { silent = true,noremap = true })
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', { silent = true,noremap = true })
vim.keymap.set('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', { silent = true,noremap = true })
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', { silent = true,noremap = true })
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', { silent = true,noremap = true })

-- " nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>

-- scroll down hover doc or scroll in definition preview
local action = require('lspsaga.action')
vim.keymap.set('n', '<C-d>', function()
  action.smart_scroll_with_saga(1)
end, { silent = true })
vim.keymap.set('n', '<C-u>', function()
  action.smart_scroll_with_saga(-1)
end, { silent = true })
