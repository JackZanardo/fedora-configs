return {
  {
    "Everblush/nvim",
    name = "everblush",
    config = function()
      require("everblush").setup({
        transparent_background = true,
      })
    end,
  },
}
