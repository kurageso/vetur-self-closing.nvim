local M = {}

local function setup()
	vim.api.nvim_create_augroup("vetur-self-closing", {})
	vim.api.nvim_create_autocmd({ "BufReadPost", "FileReadPost" }, {
		group = "vetur-self-closing",
		pattern = { "*.vue" },
		command = "%s;^<\\(\\S\\{-1,}\\)\\s\\(.*\\)/>;<\\1 \\2></\\1>;eg",
	})

	vim.api.nvim_create_autocmd({ "BufEnter" }, {
		group = "vetur-self-closing",
		pattern = { "*.vue" },
		command = "%s;^<\\(\\S\\{-1,}\\)\\s\\(.*\\)/>;<\\1 \\2></\\1>;eg | w",
	})

	vim.api.nvim_create_autocmd({ "BufLeave" }, {
		group = "vetur-self-closing",
		pattern = { "*.vue" },
		command = "%s;^<\\(.*\\)></.*>;<\\1/>;eg | w",
	})
end

M.setup = setup

return M
