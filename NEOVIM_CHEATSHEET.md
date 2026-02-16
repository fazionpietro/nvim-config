# Neovim Configuration Cheatsheet

## Leader Key

**Leader:** `<Space>` (the space key)

---

## WINDOW NAVIGATION

| Command  | Action                 |
| -------- | ---------------------- |
| `Ctrl+h` | Go to left window      |
| `Ctrl+j` | Go to bottom window    |
| `Ctrl+k` | Go to top window       |
| `Ctrl+l` | Go to right window     |
| `Ctrl+↑` | Decrease window height |
| `Ctrl+↓` | Increase window height |
| `Ctrl+←` | Decrease window width  |
| `Ctrl+→` | Increase window width  |

---

## FILE EXPLORER (Neo-tree)

| Command     | Action               |
| ----------- | -------------------- |
| `<leader>e` | Toggle file explorer |
| `<leader>n` | Open Neo-tree        |

### Commands inside Neo-tree:

- `a` - Create new file
- `d` - Delete file
- `r` - Rename file
- `c` - Copy file
- `x` - Cut file
- `p` - Paste file
- `Enter` - Open file
- `q` - Close Neo-tree

---

## TELESCOPE (Fuzzy Finder)

| Command      | Action                   |
| ------------ | ------------------------ |
| `<leader>ff` | Find files               |
| `<leader>fr` | Recent files             |
| `<leader>fs` | Live grep (find string)  |
| `<leader>fc` | Grep string under cursor |
| `<leader>fb` | Find buffers             |
| `<leader>fh` | Help tags                |

---

## BUFFER/TAB (Bufferline)

| Command      | Action                             |
| ------------ | ---------------------------------- |
| `Tab`        | Next buffer                        |
| `Shift+Tab`  | Previous buffer                    |
| `Alt+→`      | Move buffer right                  |
| `Alt+←`      | Move buffer left                   |
| `<leader>x`  | Close current buffer               |
| `<leader>bo` | Close all except current           |
| `<leader>bp` | Pick: choose which buffer to close |

---

## SAVING

| Command           | Action                         |
| ----------------- | ------------------------------ |
| `Ctrl+s` (Normal) | Save file                      |
| `Ctrl+s` (Insert) | Save and return to Normal mode |
| `:w`              | Save (traditional command)     |
| `:wa`             | Save all open buffers          |

---

## LSP (Language Server Protocol)

| Command      | Action              |
| ------------ | ------------------- |
| `K`          | Show documentation  |
| `gd`         | Go to definition    |
| `gr`         | Show references     |
| `<leader>rn` | Rename symbol       |
| `<leader>ca` | Code action         |
| `<leader>d`  | Show diagnostics    |
| `[d`         | Previous diagnostic |
| `]d`         | Next diagnostic     |

### Additional LSP commands:

```vim
:LspInfo          " Info about active LSP servers
:LspRestart       " Restart LSP
:Mason            " Manage LSP servers
```

---

## FORMATTER (Conform.nvim)

| Command      | Action                              |
| ------------ | ----------------------------------- |
| `<leader>mp` | Format file/selection (Make Pretty) |
| Auto-format  | On save (automatic)                 |

```vim
:ConformInfo      " Info about available formatters
```

---

## AUTOCOMPLETION (Blink.cmp)

| Command      | Action                   |
| ------------ | ------------------------ |
| `Enter`      | Accept suggestion        |
| `Tab`        | Next suggestion          |
| `Shift+Tab`  | Previous suggestion      |
| `↑`          | Previous suggestion      |
| `↓`          | Next suggestion          |
| `Ctrl+Space` | Manually open completion |

---

## SURROUND (nvim-surround)

| Command            | Action                        |
| ------------------ | ----------------------------- |
| `ys<motion><char>` | Add surround (e.g. `ysiw"`)   |
| `ds<char>`         | Delete surround (e.g. `ds"`)  |
| `cs<old><new>`     | Change surround (e.g. `cs"'`) |
| `S<char>`          | Add surround in Visual mode   |

---

## LATEX (VimTeX + Texlab)

| Command      | Action                   |
| ------------ | ------------------------ |
| `<leader>tc` | Toggle Table of Contents |
| `<leader>tv` | Open/Refresh PDF viewer  |
| `<leader>ts` | Stop compilation         |
| `<leader>te` | Show compilation errors  |

### VimTeX commands:

```vim
:VimtexCompile        " Start continuous compilation
:VimtexStop           " Stop compilation
:VimtexView           " Open PDF
:VimtexErrors         " List errors
:VimtexClean          " Clean auxiliary files
:VimtexInfo           " VimTeX status info
:VimtexTocToggle      " Toggle document index
```

**Compilation:** Automatic on save (if .tex file)

---

## GIT INTEGRATION (Fugitive, Gitsigns, Lazygit)

| Command      | Action                |
| ------------ | --------------------- |
| `<leader>gg` | Open LazyGit          |
| `<leader>gs` | Git Status (Fugitive) |
| `]c`         | Next Hunk             |
| `[c`         | Previous Hunk         |
| `<leader>hs` | Stage Hunk            |
| `<leader>hr` | Reset Hunk            |
| `<leader>hS` | Stage Buffer          |
| `<leader>hR` | Reset Buffer          |
| `<leader>hp` | Preview Hunk          |
| `<leader>hb` | Blame Line            |

---

## TERMINAL (FTerm)

| Command | Action          |
| ------- | --------------- |
| `<A-i>` | Toggle Terminal |

---

## AI AGENT (99 by ThePrimeagen)

**Requires opencode installed!**

| Command      | Action                        |
| ------------ | ----------------------------- |
| `<leader>9f` | AI completes current function |
| `<leader>9v` | AI processes visual selection |
| `<leader>9s` | Stop all AI requests          |
| `<leader>9l` | View last request log         |

**Tip:** Create an `AGENT.md` file in the project root to give context to the AI

---

## VISUAL MODE

| Command  | Action                        |
| -------- | ----------------------------- |
| `v`      | Visual character mode         |
| `V`      | Visual line mode              |
| `Ctrl+v` | Visual block mode             |
| `<`      | Indent left (keep selection)  |
| `>`      | Indent right (keep selection) |
| `y`      | Copy selection                |
| `d`      | Cut selection                 |
| `p`      | Paste after selection         |

---

## INSERT MODE

| Command          | Action                           |
| ---------------- | -------------------------------- |
| `i`              | Insert mode before cursor        |
| `a`              | Insert mode after cursor         |
| `I`              | Insert mode at beginning of line |
| `A`              | Insert mode at end of line       |
| `o`              | New line below                   |
| `O`              | New line above                   |
| `Esc` / `Ctrl+[` | Return to Normal mode            |

---

## USEFUL VIM COMMANDS

### Search

```vim
/pattern          " Search forward
?pattern          " Search backward
n                 " Next result
N                 " Previous result
*                 " Search word under cursor forward
#                 " Search word under cursor backward
```

### Navigation

```vim
gg                " Go to beginning of file
G                 " Go to end of file
:123              " Go to line 123
0                 " Beginning of line
$                 " End of line
w                 " Next word
b                 " Previous word
%                 " Go to matching bracket
```

### Editing

```vim
u                 " Undo
Ctrl+r            " Redo
dd                " Delete line
yy                " Copy line
p                 " Paste after
P                 " Paste before
.                 " Repeat last command
```

### Split windows

```vim
:split            " Horizontal split
:vsplit           " Vertical split
:close            " Close current window
:only             " Close all except current
```

---

## AVAILABLE THEMES

### Active Theme

**black-metal (impaled-nazarene variant)** - Primary dark theme

#### Toggle alternative background:

```vim
:BlackMetalToggleBg   " Switch between main and alternative background
```

### Other Installed Themes (lazy loaded)

To change theme, run one of the following commands:

```vim
:colorscheme vesper                " Vesper theme
:colorscheme koda                  " Koda theme
:colorscheme evergarden            " Evergarden (fall variant, green accent)
:colorscheme lackluster            " Lackluster theme
:colorscheme github_dark           " GitHub Dark theme
:colorscheme github_light          " GitHub Light theme
:colorscheme github_dark_dimmed    " GitHub Dark Dimmed
```

---

**Last updated:** 2026-02-15
**Configuration version:** Custom Setup v2.0
