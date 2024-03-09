return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- LANGUAGES --
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.python-ruff" },

  -- EDITOR --
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.debugging.nvim-bqf" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },

  -- MOTION --
  -- { import = "astrocommunity.motion.mini-ai" },
  -- { import = "astrocommunity.motion.mini-move" },

  -- PROJECT --
  { import = "astrocommunity.project.project-nvim" },

  -- GIT --
  { import = "astrocommunity.git.diffview-nvim" }, -- Maybe just install these plugins by yourself?
  -- { import = "astrocommunity.git.neogit" },

  -- COLORSCHEME --
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
}
