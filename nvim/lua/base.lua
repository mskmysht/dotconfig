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
vim.g.mapleader = ' '
vim.keymap.set('i', '<C-j>', '<Plug>(skkeleton-enable)', {noremap = true})
vim.keymap.set('c', '<C-j>', '<Plug>(skkeleton-enable)', {noremap = true})
vim.keymap.set('i', '<C-l>', '<Plug>(skkeleton-disable)', {noremap = true})
vim.keymap.set('c', '<C-l>', '<Plug>(skkeleton-disable)', {noremap = true})
vim.keymap.set('n', '<leader>,', '<Cmd>BufferPrevious<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>.', '<Cmd>BufferNext<CR>', {noremap = true, silent = true})

