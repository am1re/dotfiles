local status, lualine = pcall(require, "lualine")
if (not status) then return end

local colors = {
  bg0    = '#323d43',
  bg1    = '',
  bg3    = '#4A555B',
  fg     = '#9DA9A0',
  aqua   = '#87c095',
  green  = '#a7c080',
  orange = '#e39b7b',
  purple = '#d39bb6',
  red    = '#e68183',
  grey1  = '#868d80',
}

local everforest_custom = {
  normal = {
    a = { bg = colors.green, fg = colors.bg0, gui = 'bold' },
    b = { bg = colors.bg3, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg },
  },
  insert = {
    a = { bg = colors.fg, fg = colors.bg0, gui = 'bold' },
    b = { bg = colors.bg3, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg },
  },
  visual = {
    a = { bg = colors.red, fg = colors.bg0, gui = 'bold' },
    b = { bg = colors.bg3, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg },
  },
  replace = {
    a = { bg = colors.orange, fg = colors.bg0, gui = 'bold' },
    b = { bg = colors.bg3, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg },
  },
  command = {
    a = { bg = colors.aqua, fg = colors.bg0, gui = 'bold' },
    b = { bg = colors.bg3, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg },
  },
  terminal = {
    a = { bg = colors.purple, fg = colors.bg0, gui = 'bold' },
    b = { bg = colors.bg3, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg },
  },
  inactive = {
    a = { bg = colors.bg0, fg = colors.grey1, gui = 'bold' },
    b = { bg = colors.bg0, fg = colors.grey1 },
    c = { bg = colors.bg0, fg = colors.grey1 },
  },
}

local empty = {function() return ' ' end,
    padding = 0,
    color = 'Normal',
}

lualine.setup {
  options = {
    icons_enabled = true,
    theme = everforest_custom,
    section_separators = { left = '', right = '' },
    -- component_separators = { left = '', right = '' },
    component_separators = '|',
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {
      empty,
      { 'mode', separator = { left = ''}, padding = 2},
    },
    lualine_b = {'branch', {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {
      { 'diagnostics', sources = {"nvim_diagnostic"}, symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '} },
      'encoding',
      'filetype',
      'progress'
    },
    lualine_z = {
      { 'location', separator = { right = '' }, padding = 1 },
      empty
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_3 = {}
  },
  tabline = {},
  extensions = {'fugitive'}
}

