" Plain colorscheme - Dark variant (forces dark background)
" Minimalist, distraction-free colors for focused editing
" Inspired by vim-colors-plain by andreypopp
" https://github.com/andreypopp/vim-colors-plain

lua << EOF
vim.o.background = "dark"
require("plain").setup({ variant = "dark" })
require("plain").load()
vim.g.colors_name = "plain-dark"
EOF
