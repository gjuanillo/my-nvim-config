-- Declare the path where lazy will clone plugin code
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if lazy was cloned, if not clone lazy into lazy.nvim directory
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    })
end

-- Add the path to the lazy plugin repositories to the vim runtime path
vim.opt.rtp:prepend(lazypath)

-- Declare options for lazy
local opts = {
    change_detection = {
        notify = false
    },
    checker = {
        enabled = true,
        notify = false
    }
}

-- Load preferences from config/options.lua
require("config.options")
-- Load custom map bindings from config/keymaps.lua
require("config.keymaps")
-- Load the auto commands from config/autocmds.lua
require("config.autocmds")


-- Setup Lazy, this should always be last
require("lazy").setup("plugins", opts)
