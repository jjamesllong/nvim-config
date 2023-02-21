local map = vim.keymap.set

local opts = { noremap = true, silent = true }

-- normal mode
map("n", "q", "b", opts)
map("n", "Q", "B", opts)
map("n", "gh", "^", opts)
map("n", "gl", "$", opts)
map("n", "gs", "0", opts)
map("n", "gj", "G", opts)
map("n", "U", "<c-r>", opts)
map("n", "B", "<c-v>", opts)
map("n", "<c-n>", ":BufferNext<cr>", opts)
map("n", "<c-p>", ":BufferPrevious<cr>", opts)
map("n", "<c-m>", ":BufferPrevious<cr>", opts)
map("n", "<c-q>", ":BufferDelete<cr>", opts)

map("n", "<c-w><tab>", ":NvimTreeToggle<cr>", opts)

-- visual mode
map("v", "q", "b", opts)
map("v", "Q", "B", opts)
map("v", "gh", "^", opts)
map("v", "gl", "$", opts)
map("v", "gs", "0", opts)
map("v", "gj", "G", opts)

-- terminal mode
map("t", "<esc>", [[<c-\><c-n>]], opts)
