return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    lazy = false, -- neo-tree will lazily load itself

    config = function()
      local neotree = require("neo-tree")
      neotree.setup({
        window = {
          width = 30,
        },
      })
      vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
    end
  }
}
