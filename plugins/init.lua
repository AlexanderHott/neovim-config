return {
	-- New
	["p00f/nvim-ts-rainbow"] = { -- rainbow brackets
		after = "nvim-treesitter",
	},
	["JoosepAlviste/nvim-ts-context-commentstring"] = { -- correct comments inside of jsx code
		after = "nvim-treesitter",
	},

	["jose-elias-alvarez/null-ls.nvim"] = { -- extensive formatting and diagnostics
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},
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
	["mlaursen/vim-react-snippets"] = {
		after = "LuaSnip",
	},
	["ahmedkhalf/project.nvim"] = {
		-- after = "telescope.nvim",
		config = function()
			require("custom.plugins.project")
		end,
	},
	["mfussenegger/nvim-dap"] = {
		config = function()
			require("custom.plugins.dap")
		end,
	},
	["tpope/vim-fugitive"] = {},
	["max397574/better-escape.nvim"] = {
		config = function()
			require("better_escape").setup({
				mapping = { "jk", "kj" }, -- a table with mappings to use
				timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
				clear_empty_lines = false, -- clear line after escaping if there is only whitespace
				keys = "<Esc>", -- keys used for escaping, if it is a function will use the result every time
			})
		end,
	},
	["simrat39/symbols-outline.nvim"] = {},
	["github/copilot.vim"] = {},
	["zbirenbaum/copilot-cmp"] = {},
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
	["windwp/nvim-ts-autotag"] = {
		after = "nvim-treesitter",
		config = function()
			local present, autotag = pcall(require, "nvim-ts-autotag")

			if present then
				autotag.setup()
			end
		end,
	},
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
            return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
          end
        },
      },
      -- Jump to request line on run
      jump_to_request = false,
      env_file = '.env',
      custom_dynamic_variables = {},
      yank_dry_run = true,
    })
  end
  },
  ["RishabhRD/nvim-cheat.sh"] = {},

	-- Already installed
	["goolord/alpha-nvim"] = { -- start screen
		disable = false,
		config = function()
			require("custom.plugins.alpha")
		end,
	},
	["folke/which-key.nvim"] = { disable = false },

	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},
}
