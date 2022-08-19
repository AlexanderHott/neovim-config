-- local function lsp_highlight_document(client)
-- 	-- Set autocommands conditional on server_capabilities
-- 	if client.server_capabilities.document_highlight then
-- 		vim.api.nvim_exec(
-- 			[[
--       augroup lsp_document_highlight
--         autocmd! * <buffer>
--         autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
--         autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
--       augroup END
--     ]],
-- 			false
-- 		)
-- 	end
-- end

-- Safely import lspconfig
local present, lspconfig = pcall(require, "lspconfig")
if not present then
	warn("LspConfig not installed")
	return
end
-- use nvchad's setup lsp functions
local attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local servers = {
	"cssls",
	"bashls",
	"emmet_ls",
	"tsserver",
	"pyright",
	"rust_analyzer",
	"tailwindcss",
}
-- local servers = { "html", "cssls", "bashls", "emmet_ls", "tsserver", "pyright" }

local on_attach = function(client, bufnr)
	attach(client, bufnr)
	-- TODO check if this does anything
	-- lsp_highlight_document(client)
end

-- bind functions for each language server
for _, lsp in ipairs(servers) do
	local opts = {
		on_attach = on_attach,
		capabilities = capabilities,
	}
	local ok, lsp_server_conf = pcall(require, "custom.plugins.lsp." .. lsp)

	if ok then
		opts = vim.tbl_deep_extend("force", opts, lsp_server_conf)
	end

	lspconfig[lsp].setup(opts)
end
