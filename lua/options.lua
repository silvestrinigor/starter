require "nvchad.options"

vim.opt.relativenumber = true
vim.opt.number = true  -- optional: shows absolute number on current line
vim.opt.scrolloff = 999

vim.opt.tabstop = 4        -- Number of spaces a tab displays as
vim.opt.shiftwidth = 4     -- Number of spaces used for indentation
vim.opt.expandtab = true   -- Convert tabs to spaces

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function(data)
    -- Only open nvim-tree if nvim was started with a directory
    local directory = vim.fn.isdirectory(data.file) == 1
    if directory then
      require("nvim-tree.api").tree.open()
    end
  end,
})

-- add yours here!
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
