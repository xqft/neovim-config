require "paq" {
    "savq/paq-nvim";                  -- Let Paq manage itself
    'glacambre/firenvim';
    "lervag/vimtex";
}

vim.g.vimtex_view_method = 'zathura'

-- vim.api.nvim_command([[au TextChanged,TextChangedI <buffer> if get(g:, 'autosave', 1) | if &readonly == 0 && filereadable(bufname('%')) | silent write | endif | endif]]) i lost an entire file by using this

vim.api.nvim_set_keymap('n', '<f1>', ":let g:autosave = !get(g:, 'autosave', 1)<cr>", { noremap = true})
