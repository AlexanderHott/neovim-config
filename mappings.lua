local M = {}

-- n: Normal
-- v: Visual
-- x: Visual Line

M.general = {
	v = {
		-- Move text
		["<M-k>"] = { "<ESC>:m .-2<CR>gv", "   Move text up" },
		["<M-j>"] = { "<ESC>:m .+1<CR>gv", "   Move text down" },

		-- Stay in visual line mode for < and >
		[">"] = { ">gv", "   Indent" },
		["<"] = { "<gv", "   Dedent" },

		-- Keep yanked text on paste
		--keymap("v", "p", '"_dP', opts)
		["p"] = { '"_dP', "   Paste" },
	},

	n = {
		["M-k"] = { ":m .-2<CR>", "   Move text up" },
		["M-j"] = { ":m .+1<CR>", "   Move text down" },
		["C-s"] = { "<cmd>lua vim.lsp.buf.formatting()<CR>:w<CR>", "Format the file"},
		-- map("n", "<C-Up>", ":resize +2<CR>", opts)
		-- asdkeymap("n", "<C-Down>", ":resize -2<CR>", opts)
		-- asdkeymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
		-- asdkeymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
	},
	-- x = {
	-- Move text up and down
	-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
	-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
	-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
	-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
	-- },
}

M.dap = {
	n = {
		["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>", "B   Toggle breakpoiunt" },
		["<leader>dc"] = { "<cmd> DapContinue <CR>", "C   Start or continue debugging" },
		["<leader>di"] = { "<cmd> DapStepInto <CR>", "I   Step Into" },
		["<leader>do"] = { "<cmd> DapStepOut <CR>", "O   Step Out" },
		["<leader>dv"] = { "<cmd> DapStepOver <CR>", "V   Step Over" },
		["<leader>dd"] = { "<cmd> DapTerminate <CR>", "D   Terminate Session" },
		["<leader>dr"] = { "<cmd> DapToggleRepl <CR>", "R   Toggle Repl" },
		["<leader>dk"] = { "<cmd> lua require('dap.ui.widgets').hover() <CR>", "K   Hover" },
	},
}

M.hop = {
	n = {

		["f"] = {
			"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
			"fdsa",
		},
		["F"] = {
			"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
			"fdsa",
		},
		["t"] = {
			"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>",
			"fdsa",
		},
		["T"] = {
			"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>",
			"fdsa",
		},
		["<leader>jw"] = { "<cmd> HopWordMW <CR>", "Hop to any word in any window." },
		["<leader>ja"] = { "<cmd> HopAnywhereMW <CR>", "Hop anywhere in any window." },
		["<leader>js"] = { "<cmd> HopPatternMW <CR>", "Hop to any string in any window." },
	},
}
-- keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
-- keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
M.rest = {
	n = {
		["rr"] = {
			"<Plug>RestNvim",
			"Rest client",
		},
	},
}

M.comment = {
  n = {
    ["gc"] = { "<Plug>Commentary", "Comment the current line"}
  }
}

M.chtsh = {
	n = {
		["<leader>cs"] = { ":Cheat<cr>", "Check cht.sh" },
	},
}

return M
