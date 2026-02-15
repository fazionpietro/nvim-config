# Neovim Configuration

A modern, modular Neovim configuration optimized for development with LSP support, advanced autocompletion, and LaTeX editing.

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)

---
# Preview
<img width="2036" height="1353" alt="image" src="https://github.com/user-attachments/assets/32d7e37c-9cc1-4421-b92a-8e6f2ddad214" />

## Features

- **Modular Structure** - Clean separation of configuration into logical modules
- **LSP Support** - Full language server support for Java, Python, Lua, LaTeX, and more
- **LaTeX Integration** - VimTeX + Texlab for professional LaTeX editing
- **Smart Autocompletion** - Powered by blink.cmp with snippet support
- **Beautiful UI** - Black Metal theme with Lualine status line and icons
- **File Management** - Neo-tree file explorer with buffer navigation
- **Code Formatting** - Automatic formatting with Conform.nvim
- **Treesitter** - Advanced syntax highlighting and code understanding
- **AI Assistance** - Integrated 99 AI agent for code completion

## Requirements

- **Neovim** ≥ 0.9.0
- **Git**
- **Node.js** (for LSP servers)
- **Python 3** (for Python LSP)
- **Java JDK** (for Java LSP with Lombok support)
- **LaTeX** distribution (for VimTeX: latexmk, pdflatex, etc.)
- **PDF Viewer** - Sioyek (for LaTeX preview) or Zathura
- **Terminal** with true color support (recommended: Kitty, Alacritty, WezTerm)
- **Nerd Font** for icons (recommended: JetBrainsMono Nerd Font, Fira Code)

### Optional
- **opencode** - Required for 99 AI agent functionality

## Installation

### 1. Backup existing configuration
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

### 2. Clone this repository
```bash
git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim
```

### 3. Start Neovim
```bash
nvim
```

Lazy.nvim will automatically install all plugins on first launch.

### 4. Install LSP servers
After Neovim opens, run:
```vim
:Mason
```

The following servers should be installed automatically:
- `texlab` (LaTeX)
- `lua_ls` (Lua)
- `jdtls` (Java with Lombok + Spring Boot)
- `pyright` (Python)

## Structure

```
nvim/
├── init.lua                          # Main entry point
├── lazy-lock.json                    # Plugin lock file
├── NEOVIM_CHEATSHEET.md              # Quick reference guide
├── STRUCTURE.txt                     # Detailed structure documentation
│
├── lua/
│   ├── config/                       # Core configuration
│   │   ├── autocmds.lua              # Autocommands
│   │   ├── keymaps.lua               # All keybindings
│   │   └── options.lua               # Editor settings
│   │
│   └── plugins/                      # Plugin configurations
│       ├── init.lua                  # Lazy.nvim bootstrap
│       ├── completion.lua            # LuaSnip + Blink.cmp
│       ├── lsp.lua                   # Mason + LSP servers
│       ├── formatting.lua            # Conform.nvim
│       ├── treesitter.lua            # Syntax highlighting
│       ├── ui.lua                    # Theme + Lualine + Icons
│       ├── explorer.lua              # Neo-tree + Bufferline
│       ├── editor.lua                # Autopairs + Harpoon + 99
│       └── vimtex.lua                # LaTeX support
│
└── snippets/                         # Custom snippets
    ├── package.json
    └── tex.json                      # LaTeX snippets
```

## Plugins

### Core
- [lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configuration
- [mason.nvim](https://github.com/williamboman/mason.nvim) - LSP server manager
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - Bridge between Mason and LSP

### Language Support
- [nvim-java](https://github.com/nvim-java/nvim-java) - Java development with Lombok + Spring Boot
- [VimTeX](https://github.com/lervag/vimtex) - LaTeX editing
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting

### Completion & Snippets
- [blink.cmp](https://github.com/saghen/blink.cmp) - Autocompletion
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine

### Editor Enhancement
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) - File explorer
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) - Buffer/tab line
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Auto close brackets
- [harpoon](https://github.com/ThePrimeagen/harpoon) - Quick file navigation
- [99](https://github.com/ThePrimeagen/99) - AI code completion agent

### UI & Aesthetics
- [black-metal-theme](https://github.com/metalelf0/black-metal-theme-neovim) - Dark theme (primary)
- [vesper.nvim](https://github.com/datsfilipe/vesper.nvim) - Alternative dark theme
- [koda.nvim](https://github.com/oskarnurm/koda.nvim) - Alternative dark theme
- [evergarden](https://github.com/everviolet/nvim) - Nature-inspired theme
- [lackluster.nvim](https://github.com/slugbyte/lackluster.nvim) - Minimal theme
- [github-nvim-theme](https://github.com/projekt0n/github-nvim-theme) - GitHub-inspired themes
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Status line
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - File icons

### Formatting
- [conform.nvim](https://github.com/stevearc/conform.nvim) - Code formatter

## Key Mappings

**Leader key:** `<Space>`

### Essential
| Key | Action |
|-----|--------|
| `<C-s>` | Save file (Normal/Insert mode) |
| `<leader>e` | Toggle file explorer |
| `<leader>f` | Format file/selection |

### LSP
| Key | Action |
|-----|--------|
| `K` | Show documentation |
| `gd` | Go to definition |
| `gr` | Show references |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>d` | Show diagnostics |
| `[d` / `]d` | Navigate diagnostics |

### Navigation
| Key | Action |
|-----|--------|
| `<C-h/j/k/l>` | Navigate between windows |
| `<C-↑/↓/←/→>` | Resize windows |
| `<Tab>` / `<S-Tab>` | Next/previous buffer |
| `<M-←/→>` | Move buffer left/right |

### Buffers
| Key | Action |
|-----|--------|
| `<leader>x` | Close current buffer |
| `<leader>bo` | Close all except current |
| `<leader>bp` | Pick buffer to close |

### LaTeX (VimTeX)
| Key | Action |
|-----|--------|
| `<leader>tc` | Toggle table of contents |
| `<leader>tv` | View PDF |
| `<leader>ts` | Stop compilation |
| `<leader>te` | Show errors |

### AI Agent (99)
| Key | Action |
|-----|--------|
| `<leader>9f` | Complete current function |
| `<leader>9v` | Process visual selection |
| `<leader>9s` | Stop all AI requests |
| `<leader>9l` | View logs |

> **Tip:** See [NEOVIM_CHEATSHEET.md](NEOVIM_CHEATSHEET.md) for a complete reference guide.

## Configuration

### LSP Servers

Configured for the following languages:
- **Java** - jdtls (with Lombok and Spring Boot support via nvim-java)
- **Python** - pyright
- **Lua** - lua_ls (with Neovim API support)
- **LaTeX** - texlab (integrated with VimTeX)

To add more servers:
1. Run `:Mason` and install desired server
2. Add configuration in `lua/plugins/lsp.lua`

### Formatting

Conform.nvim is configured for automatic formatting on save. Supported formatters:
- **Lua** - stylua
- **Python** - black, isort
- **Java** - google-java-format
- **JavaScript/TypeScript** - prettier
- **C/C++** - clang-format

Configure in `lua/plugins/formatting.lua`.

### LaTeX Setup

Uses VimTeX + Texlab with:
- **Compiler:** latexmk
- **PDF Viewer:** Sioyek (change to Zathura in `lua/plugins/lsp.lua` if needed)
- **Forward/Inverse search** enabled
- **Continuous compilation** on save

### Themes

#### Active Theme
**Black Metal (Impaled Nazarene variant)** - Dark theme optimized for focused coding

Toggle alternative background:
```vim
:BlackMetalToggleBg
```

#### Changing Themes

You can switch to any of the installed themes using the `:colorscheme` command:

```vim
:colorscheme vesper                " Vesper - Dark theme
:colorscheme koda                  " Koda - Dark theme
:colorscheme evergarden            " Evergarden - Nature-inspired (fall variant, green accent)
:colorscheme lackluster            " Lackluster - Minimal dark theme
:colorscheme github_dark           " GitHub Dark
:colorscheme github_light          " GitHub Light
:colorscheme github_dark_dimmed    " GitHub Dark Dimmed
```

#### Black Metal Theme Variants

The Black Metal theme includes 12 variants inspired by black metal bands. To change the variant, edit `lua/plugins/ui.lua` line 22:

**Available variants:**
- `impaled-nazarene` (current)
- `venom`
- `dark-funeral`
- `bathory`
- `burzum`
- `darkthrone`
- `gorgoroth`
- `immortal`
- `khold`
- `marduk`
- `mayhem`
- `nile`

**Example:**
```lua
-- In lua/plugins/ui.lua, line 22
theme = "venom",  -- Change from "impaled-nazarene" to desired variant
```

After changing the theme configuration in `lua/plugins/ui.lua`, restart Neovim or run:
```vim
:source ~/.config/nvim/init.lua
```

## AI Agent Setup (Optional)

The 99 AI agent requires `opencode` to be installed:

```bash
# Install opencode (check official repository for instructions)
```

Create an `AGENT.md` file in your project root to provide context to the AI agent.

## Contributing

Feel free to fork this configuration and adapt it to your needs!

## License

This configuration is free to use and modify.

---

**Last Updated:** February 2026  
**Neovim Version:** ≥ 0.9.0
