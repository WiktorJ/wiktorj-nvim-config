-- lua/plugins/diffview.lua
return {
  "sindrets/diffview.nvim",
  -- dependencies = { "nvim-lua/plenary.nvim" }, --lazy.nvim handles this automatically

  -- Lazy-load the plugin on these commands
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewFileHistory" },

  -- The `keys` table is the recommended way to set up keymaps in lazyvim
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open Diffview" },
    { "<leader>gc", "<cmd>DiffviewClose<cr>", desc = "Close Diffview" },
    { "<leader>gt", "<cmd>DiffviewToggleFiles<cr>", desc = "Toggle files in Diffview" },
    { "<leader>gf", "<cmd>DiffviewFocusFiles<cr>", desc = "Focus files in Diffview" },
    { "<leader>gi", "<cmd>DiffviewFileHistory<cr>", desc = "File history in Diffview" },
    { "<leader>gH", "<cmd>DiffviewFileHistory %<cr>", desc = "File history for current file" },
  },

  -- The `opts` table is the same as the `setup` function for the plugin
  opts = {
    -- You can add your configuration options here.
    -- For example, to change the keymaps inside the diffview buffer:
    keymaps = {
      view = {
        -- Default: "g," and "g;"
        -- ["<tab>"] = "j", -- Navigate to next entry
        -- ["<s-tab>"] = "k", -- Navigate to prev entry
      },
      file_panel = {
        -- ["j"] = "j",
        -- ["<down>"] = "j",
        -- ["k"] = "k",
        -- ["<up>"] = "k",
      },
    },
    -- For more options, see :help diffview-config
  },
}
