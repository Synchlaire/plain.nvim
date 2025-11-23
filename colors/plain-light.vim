" Plain colorscheme - Light variant (forces light background)
" Minimalist, distraction-free colors for focused editing
" Inspired by vim-colors-plain by andreypopp
" https://github.com/andreypopp/vim-colors-plain

lua << EOF
vim.o.background = "light"
require("plain").setup({ variant = "light" })
require("plain").load()
vim.g.colors_name = "plain-light"
EOF
