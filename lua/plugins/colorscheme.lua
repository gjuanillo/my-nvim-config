return {
  'olivercederborg/poimandres.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('poimandres').setup {
        bold_vert_split = true,
        disable_background = true,
        dim_nc_background = true,
        disable_float_background = true
    }
  end,
  -- optionally set the colorscheme within lazy config
  init = function()
    vim.cmd("colorscheme poimandres")
  end
}

-- return {
--   'luisiacc/gruvbox-baby',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Optional: configure gruvbox-baby settings here
--     vim.g.gruvbox_baby_background_color = "medium" -- or "medium"
--     vim.g.gruvbox_baby_transparent_mode = true
--     vim.g.gruvbox_baby_telescope_theme = 1
--   end,
--   init = function()
--     vim.cmd("colorscheme gruvbox-baby")
--   end
-- }

