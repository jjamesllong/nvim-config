local map = vim.keymap.set

local opts = { noremap = true, silent = true }

-- normal mode
map("n", "q", "b", opts)
map("n", "Q", "B", opts)
map("n", "H", "^", opts)
map("n", "L", "$", opts)
map("n", "U", "<c-r>", opts)
map("n", "<a-v>", "<c-v>", opts)

map("n", "<c-n>", ":BufferNext<cr>", opts)
map("n", "<c-p>", ":BufferPrevious<cr>", opts)
map("n", "<c-q>", ":BufferDelete<cr>", opts)

map("n", "<c-w><tab>", ":NvimTreeToggle<cr>", opts)

-- visual mode
map("v", "q", "b", opts)
map("v", "Q", "B", opts)
map("v", "H", "^", opts)
map("v", "L", "$", opts)


-- terminal mode
map("t", "<esc>", [[<c-\><c-n>]], opts)
