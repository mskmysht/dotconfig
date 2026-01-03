return {
  {
    "vim-skk/skkeleton",
    --lazy = false,
    dependencies = {
      "vim-denops/denops.vim",
      "saghen/blink.cmp",
    },
    config = function()
      vim.fn['skkeleton#config']({
        globalDictionaries = {
          "~/.config/skk/SKK-JISYO.L",
          -- "~/.config/skk/SKK-JISYO.geo",
        },
        eggLikeNewline = true,
        keepState = true,
        showCandidatesCount = 2,
        registerConvertResult = true,
      })
    end
  },
    -- register_keymap']('input', '/', 'abbrev')
}

