return {
  {
    "catppuccin/nvim",
    config = function(plugin, opts)
      require("catppuccin").setup({
        transparent_background = true,
      })

      vim.cmd.colorscheme "catppuccin"
    end
  }
}
