# Neovim Config

This is meant for use with [NvChad](https://github.com/nvchad/nvchad)

[BREAKING CHANGES](https://github.com/NvChad/NvChad/issues/1386)

[Inspiration from the creator of NvChad](https://github.com/siduck/dotfiles/tree/master/nvchad/custom)

## Quickstart

```bash
git clone https://github.com/AlexanderHOtt/neovim-config/ ~/.config/nvchad_custom
ln -s ~/.config/nvchad_custom/ ~/.config/nvim/lua/custom
```

**Note:** Make sure to run `:PackerSync` after nvim launches.

## [NvChad Setup](https://nvchad.github.io/quickstart/install)

```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

## TODO

TODO: Add plugins

- [x] <https://github.com/tpope/vim-fugitive>
- [ ] <https://github.com/rcarriga/nvim-dap-ui>
- [ ] lsp lines
- [x] leap.nvim / hop.nvim
- [ ] <https://github.com/folke/trouble.nvim>

TODO: Add keymaps

- [ ] nvim dap

TODO: Add terminal repls

TODO: Add autocmds

TODO: Fix indents
may be caused by indent-blankline + ts indents at the same time
