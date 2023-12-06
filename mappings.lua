local sections = {
  t = { desc = "󱂬 Tabs" },
  -- T = { desc = " Terminal" },
}

-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- Move text up and down
    ["<A-j>"] = { ":m .+1<CR>==", desc = "Move text down" },
    ["<A-k>"] = { ":m .-2<CR>==", desc = "Move text up" },

    -- TABS --
    ["<leader>t"] = sections.t,
    ["<leader>ta"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>tc"] = { "<cmd>tabclose<cr>", desc = "Close tab" },
    ["<leader>tn"] = { "<cmd>tabnext<cr>", desc = "Next tab" },
    ["<leader>tp"] = { "<cmd>tabprevious<cr>", desc = "Previous tab" },
    ["<leader>tv"] = false,
    ["<leader>tl"] = false,
    ["<leader>tf"] = false,
    ["<leader>th"] = false,
    -- Diffview
    ["<leader>td"] = { "<cmd>DiffviewOpen<cr>", desc = "Diffview" },
    ["<leader>tdo"] = { "<cmd>DiffviewOpen<cr>", desc = "Open Diffview" },
    ["<leader>tdh"] = { "<cmd>DiffviewFileHistory<cr>", desc = "Open current branch Git History" },
    ["<leader>tdH"] = { "<cmd>DiffviewFileHistory %<cr>", desc = "Open current file Git History" },
    ["<leader>tdr"] = { "<cmd>DiffviewRefresh<cr>", desc = "Refresh Diffview" },

    -- GIT --
    ["<leader>gB"] = { "<cmd>:GitBlameToggle<cr>", desc = "Toggle inline blame" },

    -- TOGGLERTERM --
    ["[<F7>]"] = { "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Toggle terminal" },
    ["<C-'>"] = { "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Toggle terminal" },
    ["2<C-'>"] = { "<cmd>2ToggleTerm direction=horizontal<cr>", desc = "Open second terminals" },
    ["3<C-'>"] = { "<cmd>3ToggleTerm direction=horizontal<cr>", desc = "Open third terminals" },
    ["4<C-'>"] = { "<cmd>4ToggleTerm direction=horizontal<cr>", desc = "Open fourth terminals" },

    -- PROJECTS --
    ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find projects" },

    -- Trouble --
    ["<leader>x"] = { desc = "Trouble" },
    ["<leader>xd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Toggle document diagnostics" },
    ["<leader>xw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Toggle workspace diagnostics" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Toggle quickfix" },
    -- TroubleToggle lsp_*
    -- TroubleToggle loclist
    -- TroubleToggle telescope

    ["<leader>n"] = false,
  },
  v = {
    -- Don't copy highlighted text when pasting
    p = { '"_dp' },

    -- Move text up and down
    ["<A-j>"] = { ":m .+1<CR>==", desc = "Move text down" },
    ["<A-k>"] = { ":m .-2<CR>==", desc = "Move text up" },
  },
  x = {
    -- Move text up and down
    ["<A-j>"] = { ":move '>+1<CR>gv-gv", desc = "Move text down" },
    ["<A-k>"] = { ":move '<-2<CR>gv-gv", desc = "Move text up" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,

    -- TOGGLERTERM --
    -- Leave TERMINAL mode
    -- ["<esc>"] = { "<C-\\><C-n>" },
    ["2<C-'>"] = { "<cmd>2ToggleTerm direction=horizontal<cr>", desc = "Open second terminals" },
    ["3<C-'>"] = { "<cmd>3ToggleTerm direction=horizontal<cr>", desc = "Open third terminals" },
    ["4<C-'>"] = { "<cmd>4ToggleTerm direction=horizontal<cr>", desc = "Open fourth terminals" },
  },
}
