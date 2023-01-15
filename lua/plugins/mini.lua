return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.animate").setup()
    require("mini.comment").setup()
    require("mini.indentscope").setup()
    require("mini.jump").setup()
    require("mini.pairs").setup()
  end
}
