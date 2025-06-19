return {
  "brenoprata10/nvim-highlight-colors",
  event = { "BufReadPost", "BufNewFile" }, -- or remove this line to load on startup
  config = function()
    require("nvim-highlight-colors").setup({
      render = "background", -- 'foreground' | 'first_column' | 'background'
      enable_named_colors = true,
      enable_tailwind = true,
    })
  end
}
