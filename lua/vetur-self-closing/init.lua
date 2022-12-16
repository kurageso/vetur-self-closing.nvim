local M = {}

local function setup()
vim.api.nvim_create_augroup("vetur-self-closing",  {})
vim.api.nvim_create_autocmd({"BufReadPost", "FileReadPost"}, {
  group = 'vetur-self-closing',
  pattern = {'*.vue'},
  command = 's;\\(<i18n.*\\)/>;\\1></i18n>;eg'
})

vim.api.nvim_create_autocmd({"BufEnter"}, {
  group = "vetur-self-closing",
  pattern = {"*.vue"},
  command = 's;\\(<i18n.*\\)/>;\\1></i18n>;eg | w'
})

vim.api.nvim_create_autocmd({"BufLeave"}, {
  group = "vetur-self-closing",
  pattern = {"*.vue"},
  command = 's;></i18n>;/>;eg | w'
})
end

M.setup = setup

return M
