# Neovim Spring Boot + React Full-Stack Development

The purpose of this repository is to serve as a backup for my Neovim configuration and to keep track of any changes I make. If you’ve stumbled upon this repository and find it useful, feel free to fork it!

## Special Thanks

Huge thanks to **Unknown Koder** for his amazing [YouTube guide](https://www.youtube.com/watch?v=zbpF3te0M3g&t=11362s) and for his generosity in providing his nvim setup tailored for Java full-stack development from scratch. Please check out his video!  
This configuration is heavily inspired by his work, with some personal tweaks and updates to better suit my needs for **Full Stack Development (Spring Boot + React)**.

---

## Overview

This Neovim configuration is tailored for:
- Java/Spring development
- JavaScript/TypeScript (React) development
- Convenient file navigation, coding, debugging, and Git integration

I’ve made updates such as:
- Using `ts_ls` for TypeScript/JavaScript LSP.
- Custom keymaps
- Updated plugins and personalized themes
- Focus on a minimal but powerful setup

---

## Preview

**Example:**  

![Screenshot 1](preview-1.png)  
![Screenshot 2](preview-2.png)

---

## Plugin List

### Core Plugin Manager
- [Lazy.nvim](https://github.com/folke/lazy.nvim) — Plugin Manager

### UI / Theme
- [Gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) — Color Scheme
- [Lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — Statusline
- [Nvim-Tree.lua](https://github.com/nvim-tree/nvim-tree.lua) — File Explorer
- [Which-key.nvim](https://github.com/folke/which-key.nvim) — Keybinding Helper

### Fuzzy Finder / Navigation
- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) — Fuzzy Finder
- [Harpoon](https://github.com/ThePrimeagen/harpoon) — File/bookmark quick navigation

### Syntax Highlighting
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — Syntax Parsing and Highlighting

### Language Server Protocol (LSP) and Autocompletion
- [Mason.nvim](https://github.com/williamboman/mason.nvim) — LSP/DAP/Formatter Installer
- [Mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) — Bridge between Mason and LSPConfig
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) — Native LSP Configuration
- [nvim-jdtls](https://github.com/mfussenegger/nvim-jdtls) — Java Language Support (JDTLS)
- [Springboot-nvim](https://github.com/elmcgill/springboot-nvim) — Extra Support for Spring Boot Development
- [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim) — Formatter and Linter (ex. Null-ls)

### Completion Plugins
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) — Completion Engine
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) — LSP Source for nvim-cmp
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) — Buffer Source for nvim-cmp
- [cmp-path](https://github.com/hrsh7th/cmp-path) — Path Source for nvim-cmp
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) — Snippet Engine
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) — LuaSnip Source for nvim-cmp
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) — Snippet Collection

### Debugging
- [nvim-dap](https://github.com/mfussenegger/nvim-dap) — Debug Adapter Protocol Client

### Utilities
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) — Autoclose Brackets and Quotes
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) — Easy Commenting
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) — Git Integration
- [vim-fugitive](https://github.com/tpope/vim-fugitive) — Full Git Wrapper

---
## Credits
- Original configuration and inspiration: [Unknown Koder](https://github.com/unknownkoder/Java-FullStack-NeoVim-Configuration)
- Contributors of all the listed plugins for building an incredible Neovim ecosystem
---

## Requirements
#### This setup is configured to use WSL, such as Ubuntu. Tools needed to be present inside the system include:
- Java Development Kit 17+
- Node.js Latest LTS
- Npm
- Neovim v0.9+
- Git
- Ripgrep

---

## Installation

```bash
git clone https://github.com/gjuanillo/my-nvim-config.git ~/.config/nvim
nvim


