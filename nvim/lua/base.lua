vim.guifont = "Hack Nerd Font"
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.list = true
vim.opt.listchars = {
    eol = "¶",      -- End of line
    tab = "» ",     -- Tab character (followed by a space for clarity)
    trail = "·",    -- Trailing spaces
    lead = "·",     -- Leading spaces (if you want to differentiate)
    extends = "⟩",  -- Character displayed when a line extends beyond the window
    precedes = "⟨", -- Character displayed when a line precedes the window
    conceal = "¤",  -- Character used for concealed text
    nbsp = "␣",     -- Non-breaking space
}
vim.api.nvim_set_keymap('i', '<C-j>', '<Plug>(skkeleton-enable)', {noremap = true})
vim.api.nvim_set_keymap('c', '<C-j>', '<Plug>(skkeleton-enable)', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-l>', '<Plug>(skkeleton-disable)', {noremap = true})
vim.api.nvim_set_keymap('c', '<C-l>', '<Plug>(skkeleton-disable)', {noremap = true})

