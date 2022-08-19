local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {

   -- webdev stuff
   b.formatting.prettier.with {
      filetypes = {
         "javascript",
         "javascriptreact",
         "typescript",
         "typescriptreact",
         "vue",
         "css",
         "scss",
         "less",
         "html",
         "json",
         "jsonc",
         "yaml",
         "markdown",
         "graphql",
         "handlebars",
      },
      extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
   },

   -- Lua
   b.formatting.stylua,

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

   -- Python
   b.formatting.black.with { extra_args = { "--fast" } },
   b.diagnostics.flake8,

   -- Rust
   b.formatting.rustfmt.with { extra_args = { "--edition", "2021" } },

   -- SQL
   b.formatting.sqlfluff.with {
      extra_args = { "--dialect", "postgres" },
   },
   b.diagnostics.sqlfluff.with {
      extra_args = { "--dialect", "postgres" },
   },

   -- Markdown
   b.formatting.markdownlint,
   b.diagnostics.markdownlint,

   -- Misc
   b.diagnostics.codespell,
}

null_ls.setup {
   debug = true,
   sources = sources,
}
