" with everforest theme and lspsaga diagnostics popup
" text is underlined which looks awful
" this overrides settings but hardcodes colors :\

lua << EOF
local api = vim.api
api.nvim_set_hl(0,"LspSagaDiagnosticInfo", {fg='#7fbbb3'})
api.nvim_set_hl(0,"LspSagaDiagnosticError", {fg='#e67e80'})
api.nvim_set_hl(0,"LspSagaDiagnosticWarn", {fg='#dbbc7f'})
api.nvim_set_hl(0,"LspSagaDiagnosticHint", {fg='#a7c080'})

api.nvim_set_hl(0,"LspSagaInfoTrunCateLine", {link='LspSagaDiagnosticInfo'})
api.nvim_set_hl(0,"LspSagaErrorTrunCateLine", {link='LspSagaDiagnosticError'})
api.nvim_set_hl(0,"LspSagaWarnTrunCateLine", {link='LspSagaDiagnosticWarn'})
api.nvim_set_hl(0,"LspSagaHintTrunCateLine", {link='LspSagaDiagnosticHint'})

-- call everforest#highlight('ErrorText', s:palette.none, s:palette.none, 'undercurl', s:palette.red)
-- call everforest#highlight('WarningText', s:palette.none, s:palette.none, 'undercurl', s:palette.yellow)
-- call everforest#highlight('InfoText', s:palette.none, s:palette.none, 'undercurl', s:palette.blue)
-- call everforest#highlight('HintText', s:palette.none, s:palette.none, 'undercurl', s:palette.green)
EOF

