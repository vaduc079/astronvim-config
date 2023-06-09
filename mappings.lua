local utils = require "astronvim.utils"
local is_available = utils.is_available

-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
local maps = {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
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
    -- ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- center search result
    ["n"] = { "nzz" },
    ["N"] = { "Nzz" },
    -- switch buffer
    ["<S-h>"] = { ":bprevious<cr>", desc = "Switch to previous buffer" },
    ["<S-l>"] = { ":bnext<cr>", desc = "Switch to next buffer" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    -- paste over currently selected text without yanking it
    ["p"] = { '"_dP' },
    -- better indent
    ["<"] = { "<gv", desc = "Better unindent" },
    [">"] = { ">gv", desc = "Better indent" },
  },
  x = {
    ["K"] = { ":move '<-2<cr>gv-gv", desc = "Move line/block up" },
    ["J"] = { ":move '>+1<cr>gv-gv", desc = "Move line/block down" },
  },
}

-- Terminal
if is_available "toggleterm.nvim" then
  if vim.fn.executable "lazydocker" == 1 then
    maps.n["<leader>td"] = { function() utils.toggle_term_cmd "lazydocker" end, desc = "ToggleTerm lazydocker" }
  end
end

return maps
