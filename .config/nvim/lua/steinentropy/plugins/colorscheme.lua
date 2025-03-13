return {
  {
    "catppuccin/nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Define colors
      local bg = "#1e1e2e"  -- dark background color (mocha style)
      local bg_dark = "#181825"  -- dark variant for background
      local bg_highlight = "#2a2a37"  -- background highlight color
      local fg = "#cdd6f4"  -- foreground text color (light text on dark background)
      local fg_dark = "#a6adc8"  -- slightly darker text color
      local fg_gutter = "#6c7086"  -- color for the gutter text
      local border = "#45475a"  -- border color

      require("catppuccin").setup({
        flavour = "mocha",  -- using mocha flavor for dark theme
        transparent_backround = true,  -- transparency enabled
        on_colors = function(colors)
          colors.bg = bg
          colors.bg_dark = bg_dark
          colors.bg_float = bg_dark
          colors.bg_highlight = bg_highlight
          colors.bg_popup = bg_dark
          colors.bg_sidebar = bg_dark
          colors.bg_statusline = bg_dark
          colors.fg = fg
          colors.fg_dark = fg_dark
          colors.fg_gutter = fg_gutter
          colors.border = border
        end,
      })
      
      -- Load the colorscheme here
      vim.cmd([[colorscheme catppuccin]])
    end,
  },
}
