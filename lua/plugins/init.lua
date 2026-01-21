return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gwrite",
      "Gread",
      "Gdiffsplit",
      "Gvdiffsplit",
      "Gedit",
      "Gsplit",
      "Gvsplit",
      "Gtabedit",
      "Gblame",
      "GMove",
      "GRename",
      "GDelete",
      "GRemove",
      "GBrowse",
    },
    keys = {
      { "<leader>gb", "<cmd>Git blame<cr>", desc = "Git blame" },
    },
  },
  {
    "zbirenbaum/copilot.lua",
    dependencies = {
      "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
    },
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        debounce = 15,
        trigger_on_accept = true,
        keymap = {
          accept = "<M-l>",
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
          toggle_auto_trigger = false,
        },
      },
      nes = {
        enabled = true, -- requires copilot-lsp as a dependency
        auto_trigger = true,
        keymap = {
          accept_and_goto = "<M-c>",
          accept = "<M-a>",
          dismiss = "<M-d>",
        },
      },
    },
    config = function(_, opts)
      require("copilot").setup(opts)
    end,
  },


  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
