return {
  "f-person/git-blame.nvim",
  event = "User AstroGitFile",
  opts = {
    enabled = false,
    message_template = "<author> • <date> • <summary>",
    ignored_filetypes = { "NvimTree", "toggleterm" },
    set_extmark_options = {
      virt_text_pos = "right_align",
    },
  },
}
