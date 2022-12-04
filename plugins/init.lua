local override = require("custom.plugins.override")

-- local exists, treesitter_config = pcall(require, "nvim-treesitter.configs")
-- if exists then
-- 	vim.notify("treesitter config exists")
-- 	treesitter_config.setup({
-- 		context_commentstring = {
-- 			enable = true,
-- 		},
-- 	})
-- else
-- 	vim.notify("treesitter config not exists")
-- end

return {

	------------------------------------------------------------------------------
	-------------------------------------- New -----------------------------------
	------------------------------------------------------------------------------

	-- rainbow brackets
	["p00f/nvim-ts-rainbow"] = {
		after = "nvim-treesitter",
	},
	-- correct comments inside of jsx code
	["JoosepAlviste/nvim-ts-context-commentstring"] = {
		after = "nvim-treesitter",
	},
	-- extensive formatting and diagnostics
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},
	-- UI lib for plugin
	["RishabhRD/popfix"] = {},

	-- Doesn't work with LspInstaller
	-- ["andreadev-it/shade.nvim"] = { -- dim unactive windows
	--    -- module = "shade",
	--    config = function()
	--       require("shade").setup {
	--          overlay_opacity = 80,
	--          opacity_step = 1,
	--          exclude_filetypes = { "NvimTree", "lsp-installer" },
	--     }
	--    end,
	-- },
	-- ["andymass/vim-matchup"] = {
	--    opt = true,
	--    setup = function()
	--       require "vim-matchup"
	--    end,
	-- },

	-- React snippets
	["mlaursen/vim-react-snippets"] = {
		after = "LuaSnip",
	},
	-- Automatically find and keep track of different projects
	["ahmedkhalf/project.nvim"] = {
		-- after = "telescope.nvim",
		config = function()
			require("custom.plugins.project")
		end,
	},
	-- Debugger adapter protocol
	["mfussenegger/nvim-dap"] = {
		config = function()
			require("custom.plugins.dap")
		end,
	},
	-- Git integration with :G
	["tpope/vim-fugitive"] = {},
	-- use jk kj for escape
	["max397574/better-escape.nvim"] = {
		config = function()
			require("better_escape").setup({
				mapping = { "jk", "kj" }, -- a table with mappings to use
				timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
				clear_empty_lines = false, -- clear line after escaping if there is only whitespace
				keys = "<Esc>", -- keys used for escaping, if it is a function will use the result every time
			})
		end,
		override_options = override.better_escape,
	},
	-- outline all the tokens of a file (AST)
	["simrat39/symbols-outline.nvim"] = {},
	-- AI autocomplete
	["github/copilot.vim"] = {},
	-- Copilot in completion window
	["zbirenbaum/copilot-cmp"] = {},
	-- surround blocks with []{}()""''<> and html tags
	["tpope/vim-surround"] = {
		keys = { "c", "d", "y" },
	},
	["phaazon/hop.nvim"] = {
		branch = "v2", -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({ keys = "asdfghjkl;qwertyuiop" })
		end,
	},
	-- automatically close html/jsx tags
	["windwp/nvim-ts-autotag"] = {
		ft = { "html", "md", "javascriptreact", "typescriptreact" },
		after = "nvim-treesitter",
		config = function()
			local present, autotag = pcall(require, "nvim-ts-autotag")

			if present then
				autotag.setup()
			end
		end,
	},
	-- rest client
	["rest-nvim/rest.nvim"] = {
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("rest-nvim").setup({
				-- Open request results in a horizontal split
				result_split_horizontal = false,
				-- Keep the http file buffer above|left when split horizontal|vertical
				result_split_in_place = false,
				-- Skip SSL verification, useful for unknown certificates
				skip_ssl_verification = false,
				-- Encode URL before making request
				encode_url = true,
				-- Highlight request on run
				highlight = {
					enabled = true,
					timeout = 150,
				},
				result = {
					-- toggle showing URL, HTTP info, headers at top the of result window
					show_url = true,
					show_http_info = true,
					show_headers = true,
					-- executables or functions for formatting response body [optional]
					-- set them to nil if you want to disable them
					formatters = {
						json = "jq",
						html = function(body)
							return vim.fn.system({ "tidy", "-i", "-q", "-" }, body)
						end,
					},
				},
				-- Jump to request line on run
				jump_to_request = false,
				env_file = ".env",
				custom_dynamic_variables = {},
				yank_dry_run = true,
			})
		end,
	},
	-- cht.sh integration
	["RishabhRD/nvim-cheat.sh"] = {},
	-- commenting
	["tpope/vim-commentary"] = {},

	--	["williamboman/mason-lspconfig.nvim"] = {
	--		after = "nvim-lspconfig",
	--		config = function()
	--			require("custom.plugins.mason-lspconfig")
	--		end,
	--	},
	-- View undo history
	["mbbill/undotree"] = {},

	------------------------------------------------------------------------------
	-------------------------------------- Already installed ---------------------
	------------------------------------------------------------------------------

	-- start screen
	["goolord/alpha-nvim"] = {
		disable = false,
		config = function()
			require("custom.plugins.alpha")
		end,
		override_options = override.alpha,
	},
  -- Show keymaps
	["folke/which-key.nvim"] = { disable = false },

  -- LSP
	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},

	["kyazdani42/nvim-tree.lua"] = { override_options = override.nvimtree },
	["nvim-treesitter/nvim-treesitter"] = { override_options = override.treesitter },
	["akinsho/bufferline.nvim"] = { override_options = override.bufferline },
	["NvChad/nvterm"] = { override_options = override.nvterm },
	["lukas-reineke/indent-blankline.nvim"] = { override_options = override.blankline },
	["NvChad/nvim-colorizer.lua"] = { override_options = override.colorizer },
	["ray-x/lsp_signature.nvim"] = { override_options = override.signature },
	["lewis6991/gitsigns.nvim"] = { override_options = override.gitsigns },
	["feline-nvim/feline.nvim"] = { override_options = override.statusline },
	["nvim-telescope/telescope.nvim"] = { override_options = override.telescope },
	["williamboman/mason.nvim"] = { override_options = override.mason },
}
