-- define common options
local opts = {
	noremap = true, -- non-recursive
	silent = true, -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.keymap.set("n", "<leader>n", ":Neotree<CR>")
-- Salva il file con CTRL+S in modalità NORMALE
vim.keymap.set("n", "<C-s>", ":w<CR>", opts)

-- Salva il file con CTRL+S in modalità INSERIMENTO (e torna in Normal)
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", opts)

vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

-- Spostare la tab corrente a destra o sinistra (Riordinare)
vim.keymap.set("n", "<A-l>", ":BufferLineMoveNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-h>", ":BufferLineMovePrev<CR>", { noremap = true, silent = true })

-- Chiudere il buffer corrente (CORRETTO)
vim.keymap.set("n", "<leader>x", ":Bdelete<CR>", { noremap = true, silent = true })

-- Chiudere tutte le tab tranne quella corrente
vim.keymap.set("n", "<leader>bo", ":BufferLineCloseOthers<CR>", { noremap = true, silent = true })

-- Scegliere quale tab chiudere (modalità "Pick")
vim.keymap.set("n", "<leader>bp", ":BufferLinePickClose<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-c>", ":%y+<CR>", { desc = "Copy entire file", silent = true })
-- SPOSTAMENTO RIGHE/BLOCCHI CON ALT+J/K
-- In normal mode: sposta riga corrente
vim.keymap.set("n", "<M-j>", ":m .+1<CR>==", { desc = "Move line down", silent = true })
vim.keymap.set("n", "<M-k>", ":m .-2<CR>==", { desc = "Move line up", silent = true })

-- In visual mode: sposta blocco selezionato
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv", { desc = "Move block down", silent = true })
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv", { desc = "Move block up", silent = true })

-- In insert mode: sposta riga mentre sei in insert (opzionale)
vim.keymap.set("i", "<M-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down", silent = true })
vim.keymap.set("i", "<M-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up", silent = true })
