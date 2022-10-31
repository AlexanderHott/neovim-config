local M = {}

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

M.ui = { theme = "onedark" }

return M
