local M = {}

-- TODO: Add plugins
-- - [x] https://github.com/tpope/vim-fugitive
-- - [ ] https://github.com/rcarriga/nvim-dap-ui
-- - [ ] lsp lines
-- - [x] leap.nvim / hop.nvim
-- - [ ] https://github.com/folke/trouble.nvim
--
-- TODO: Add keymaps
-- - [ ] nvim dap
--
-- TODO: Add terminal repls
--
-- TODO: Add autocmds
--
-- TODO: Fix indents
    -- may be caused by indent-blankline + ts indents at the same time

-- local override = require("custom.plugins.override")

-- M.plugins = {
-- 	override = {
-- 		["kyazdani42/nvim-tree.lua"] = override.nvimtree,
-- 		["nvim-treesitter/nvim-treesitter"] = override.treesitter,
-- 		["akinsho/bufferline.nvim"] = override.bufferline,
-- 		["NvChad/nvterm"] = override.nvterm,
-- 		["max397574/better-escape.nvim"] = override.better_escape,
-- 		["lukas-reineke/indent-blankline.nvim"] = override.blankline,
-- 		["NvChad/nvim-colorizer.lua"] = override.colorizer,
-- 		["ray-x/lsp_signature.nvim"] = override.signature,
-- 		["lewis6991/gitsigns.nvim"] = override.gitsigns,
-- 		["feline-nvim/feline.nvim"] = override.statusline,
-- 		["nvim-telescope/telescope.nvim"] = override.telescope,
-- 	},
--
-- 	user = require("custom.plugins"),
-- }
M.plugins = require("custom.plugins")

M.mappings = require("custom.mappings")

M.ui = {}

-- Unsure where to add this
vim.opt.relativenumber = true
--

return M
