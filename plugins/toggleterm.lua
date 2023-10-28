return {
  "akinsho/toggleterm.nvim",
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 30
      elseif term.direction == "vertical" then
        return 80
      end
    end,
    -- direction = "vertical",
  },
}
