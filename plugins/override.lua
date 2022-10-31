local M = {}

M.treesitter = {
	ensure_installed = { -- one of "all", "maintained" (parsers with maintainers), or a list of languages
		"bash",
		"c",
		"cpp",
		"css",
		"elixir",
		"go",
		"graphql",
		"heex",
		"html",
		"http",
		"java",
		"javascript",
		"json",
		"latex",
		"llvm",
		"lua",
		"python",
		"regex",
		"rust",
		"scss",
		"solidity",
		"toml",
		"tsx",
		"typescript",
		"vim",
		"yaml",
	},
	sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
	ignore_install = { "" }, -- List of parsers to ignore installing
	autopairs = {
		enable = true,
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml", "python", "javascriptreact", "typescriptreact" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		colors = {
			-- "#CB1AE2",
			-- "#ffe800",
			-- "#00eaff",
			"#e964e0",
			"#009eff",
			"#ffd701",
		}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	},
	autotag = {
		enable = true,
	},
}

M.nvimtree = {
	filters = {
		exclude = { ".git" },
	},
	git = {
		enable = true,
		timeout = 400,
	},
	renderer = {
		icons = {
			git_placement = "before", -- "before" | "after" | "signcolumn"
			show = {
				git = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					default = "",
					empty = "",
					empty_open = "",
					open = "",
					symlink = "",
					symlink_open = "",
					arrow_open = "",
					arrow_closed = "",
				},
				git = {
					unstaged = "",
					staged = "",
					unmerged = "",
					renamed = "",
					untracked = "",
					deleted = "",
					ignored = "",
				},
			},
		},
		-- indent_markers = {
		--    enable = true,
		--    icons = {
		--       corner = "└ ",
		--       edge = "│ ",
		--       none = "  ",
		--    },
		-- },
		special_files = {
			"Cargo.toml",
			"Makefile",
			"README.md",
			"readme.md",
			"README.MD",
			"pyproject.toml",
			"package.json",
		},
	},
}

M.bufferline = {
	options = {
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
	},
	-- highlight = {
	--    separator = {
	--       guifg = { attribute = "bg", highlight = "TabLine" },
	--       guibg = { attribute = "bg", highlight = "TabLine" },
	--    },
	--    indicator_selected = {
	--       guifg = { attribute = "fg", highlight = "Normal" },
	--       guibg = { attribute = "bg", highlight = "luaError" },
	--    },
	-- },
}

local gen_size = function(width, height)
	return {
		row = (1 - height) / 2,
		col = (1 - width) / 2,
		width = width,
		height = height,
	}
end
M.nvterm = {
	terminals = {
		type_opts = {
			float = gen_size(0.9, 0.8),
		},
	},
}

M.better_escape = {
	mapping = { "jk", "kj" },
}

vim.cmd([[highlight IndentBlanklineContextChar guifg=#C678DD gui=nocombine]])
M.blankline = {
	show_first_indent_level = true,
	show_current_context = true,
	show_current_context_start = true,
	char = "│",
	use_treesitter = true,
	-- char_highlight_list = {
	--   "Keyword",
	-- },
}

M.colorizer = {
	user_default_options = {
		css = true,
		css_fn = true,
	},
}

M.signature = {
	doc_lines = 10,
}

M.gitsigns = {
	signs = {
		add = { hl = "gitsignsadd", text = "▎", numhl = "gitsignsaddnr", linehl = "gitsignsaddln" },
		change = { hl = "gitsignschange", text = "▎", numhl = "gitsignschangenr", linehl = "gitsignschangeln" },
		delete = { hl = "gitsignsdelete", text = "契", numhl = "gitsignsdeletenr", linehl = "gitsignsdeleteln" },
		topdelete = { hl = "gitsignsdelete", text = "契", numhl = "gitsignsdeletenr", linehl = "gitsignsdeleteln" },
		changedelete = {
			hl = "gitsignschange",
			text = "▎",
			numhl = "gitsignschangenr",
			linehl = "gitsignschangeln",
		},
	},
}

M.statusline = {}

M.telescope = {
	extensions_list = { "themes", "terms", "projects" },
}

M.mason = {
	ensure_installed = {
		-- Python
		"pyright",
    "debugpy",
		"isort",
		"flake8",
		"black",
		-- webdev
		"typescript-language-server",
		"emmet-ls",
		"tailwindcss-language-server",
		"prettier",
		"emmet-ls",
		-- Other
		"codespell",
		"lua-language-serve",
		"actionlint",
		"rust-analyze",
	},
}

return M
