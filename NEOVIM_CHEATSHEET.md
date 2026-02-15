# 🎮 Neovim Configuration Cheatsheet

## 📋 Leader Key
**Leader:** `<Space>` (il tasto spazio)

---

## 🪟 NAVIGAZIONE FINESTRE

| Comando | Azione |
|---------|--------|
| `Ctrl+h` | Vai alla finestra a sinistra |
| `Ctrl+j` | Vai alla finestra in basso |
| `Ctrl+k` | Vai alla finestra in alto |
| `Ctrl+l` | Vai alla finestra a destra |
| `Ctrl+↑` | Riduci altezza finestra |
| `Ctrl+↓` | Aumenta altezza finestra |
| `Ctrl+←` | Riduci larghezza finestra |
| `Ctrl+→` | Aumenta larghezza finestra |

---

## 📂 FILE EXPLORER (Neo-tree)

| Comando | Azione |
|---------|--------|
| `<leader>e` | Toggle file explorer |
| `<leader>n` | Apri Neo-tree |

### Comandi all'interno di Neo-tree:
- `a` - Crea nuovo file
- `d` - Elimina file
- `r` - Rinomina file
- `c` - Copia file
- `x` - Taglia file
- `p` - Incolla file
- `Enter` - Apri file
- `q` - Chiudi Neo-tree

---

## 📑 BUFFER/TAB (Bufferline)

| Comando | Azione |
|---------|--------|
| `Tab` | Buffer successivo |
| `Shift+Tab` | Buffer precedente |
| `Alt+→` | Sposta buffer a destra |
| `Alt+←` | Sposta buffer a sinistra |
| `<leader>x` | Chiudi buffer corrente |
| `<leader>bo` | Chiudi tutti tranne il corrente |
| `<leader>bp` | Pick: scegli quale buffer chiudere |

---

## 💾 SALVATAGGIO

| Comando | Azione |
|---------|--------|
| `Ctrl+s` (Normal) | Salva file |
| `Ctrl+s` (Insert) | Salva e torna in Normal mode |
| `:w` | Salva (comando tradizionale) |
| `:wa` | Salva tutti i buffer aperti |

---

## 🔍 LSP (Language Server Protocol)

| Comando | Azione |
|---------|--------|
| `K` | Mostra documentazione |
| `gd` | Vai alla definizione |
| `gr` | Mostra riferimenti |
| `<leader>rn` | Rinomina simbolo |
| `<leader>ca` | Code action |
| `<leader>d` | Mostra diagnostica |
| `[d` | Diagnostica precedente |
| `]d` | Diagnostica successiva |

### Comandi LSP aggiuntivi:
```vim
:LspInfo          " Info sui server LSP attivi
:LspRestart       " Riavvia LSP
:Mason            " Gestione LSP servers
```

---

## ✨ FORMATTER (Conform.nvim)

| Comando | Azione |
|---------|--------|
| `<leader>f` | Formatta file/selezione |
| Auto-format | Al salvataggio (automatico) |

```vim
:ConformInfo      " Info sui formatter disponibili
```

---

## 📝 AUTOCOMPLETAMENTO (Blink.cmp)

| Comando | Azione |
|---------|--------|
| `Enter` | Accetta suggerimento |
| `Tab` | Suggerimento successivo |
| `Shift+Tab` | Suggerimento precedente |
| `↑` | Suggerimento precedente |
| `↓` | Suggerimento successivo |
| `Ctrl+Space` | Apri manualmente completamento |

---

## 📄 LATEX (VimTeX + Texlab)

| Comando | Azione |
|---------|--------|
| `<leader>tc` | Toggle Table of Contents |
| `<leader>tv` | Apri/Aggiorna PDF viewer |
| `<leader>ts` | Ferma compilazione |
| `<leader>te` | Mostra errori compilazione |

### Comandi VimTeX:
```vim
:VimtexCompile        " Avvia compilazione continua
:VimtexStop           " Ferma compilazione
:VimtexView           " Apri PDF
:VimtexErrors         " Lista errori
:VimtexClean          " Pulisci file ausiliari
:VimtexInfo           " Info stato VimTeX
:VimtexTocToggle      " Toggle indice documento
```

**Compilazione:** Automatica al salvataggio (se file .tex)

---

## 🤖 AI AGENT (99 by ThePrimeagen)

⚠️ **Richiede opencode installato!**

| Comando | Azione |
|---------|--------|
| `<leader>9f` | AI completa funzione corrente |
| `<leader>9v` | AI elabora selezione visuale |
| `<leader>9s` | Ferma tutte le richieste AI |
| `<leader>9l` | Visualizza log ultima richiesta |

### Comandi aggiuntivi:
```vim
:lua require("99").view_logs()        " Vedi ultimi log
:lua require("99").prev_request_logs() " Log richiesta precedente
:lua require("99").next_request_logs() " Log richiesta successiva
```

**Tip:** Crea un file `AGENT.md` nella root del progetto per dare contesto all'AI

---

## ✏️ MODALITÀ VISUALE

| Comando | Azione |
|---------|--------|
| `v` | Modalità visual character |
| `V` | Modalità visual line |
| `Ctrl+v` | Modalità visual block |
| `<` | Indenta a sinistra (mantieni selezione) |
| `>` | Indenta a destra (mantieni selezione) |
| `y` | Copia selezione |
| `d` | Taglia selezione |
| `p` | Incolla dopo selezione |

---

## 🔤 MODALITÀ INSERIMENTO

| Comando | Azione |
|---------|--------|
| `i` | Insert mode prima del cursore |
| `a` | Insert mode dopo il cursore |
| `I` | Insert mode a inizio riga |
| `A` | Insert mode a fine riga |
| `o` | Nuova riga sotto |
| `O` | Nuova riga sopra |
| `Esc` / `Ctrl+[` | Torna in Normal mode |

---

## 🔧 COMANDI UTILI VIM

### Ricerca
```vim
/pattern          " Cerca avanti
?pattern          " Cerca indietro
n                 " Risultato successivo
N                 " Risultato precedente
*                 " Cerca parola sotto cursore avanti
#                 " Cerca parola sotto cursore indietro
```

### Navigazione
```vim
gg                " Vai a inizio file
G                 " Vai a fine file
:123              " Vai a riga 123
0                 " Inizio riga
$                 " Fine riga
w                 " Parola successiva
b                 " Parola precedente
%                 " Vai alla parentesi corrispondente
```

### Editing
```vim
u                 " Undo
Ctrl+r            " Redo
dd                " Cancella riga
yy                " Copia riga
p                 " Incolla dopo
P                 " Incolla prima
.                 " Ripeti ultimo comando
```

### Split windows
```vim
:split            " Split orizzontale
:vsplit           " Split verticale
:close            " Chiudi finestra corrente
:only             " Chiudi tutte tranne corrente
```

---

## 🎨 PLUGIN INSTALLATI

| Plugin | Descrizione |
|--------|-------------|
| **lazy.nvim** | Package manager |
| **VimTeX** | Supporto LaTeX |
| **LuaSnip** | Engine per snippet |
| **blink.cmp** | Autocompletamento |
| **nvim-lspconfig** | Configurazione LSP |
| **mason.nvim** | Gestore LSP servers |
| **nvim-treesitter** | Syntax highlighting avanzato |
| **black-metal-theme** | Tema scuro |
| **neo-tree** | File explorer |
| **bufferline** | Tab/Buffer line |
| **lualine** | Status line |
| **conform.nvim** | Code formatter |
| **99** | AI agent per coding |

---

## 🛠️ COMANDI SISTEMA

```vim
:q                " Esci
:q!               " Esci senza salvare
:wq               " Salva ed esci
:qa               " Esci da tutti i buffer
:wqa              " Salva tutti ed esci

:e filename       " Apri file
:bnext / :bn      " Buffer successivo
:bprev / :bp      " Buffer precedente
:bd               " Elimina buffer

:term             " Apri terminale
:help comando     " Aiuto su comando
```

---

## 🎯 TIPS VELOCI

1. **Copia/Incolla da/verso sistema**: Usa `"+y` (copia) e `"+p` (incolla)
2. **Ricerca e sostituisci**: `:%s/vecchio/nuovo/g`
3. **Seleziona tutto**: `ggVG`
4. **Commenta codice**: Usa plugin `Comment.nvim` (da aggiungere)
5. **Multiple cursors**: Usa visual block (`Ctrl+v`)

---

## 📚 RISORSE

- `:help` - Sistema di aiuto integrato
- `:Tutor` - Tutorial interattivo Vim
- `:checkhealth` - Diagnostica configurazione Neovim
- `:Lazy` - Gestione plugin
- `:Mason` - Gestione LSP/formatter/linter

---

## ⚙️ CONFIGURAZIONE

**File principali:**
```
~/.config/nvim/
├── init.lua              # Entry point
├── lua/
│   ├── options.lua       # Opzioni generali
│   ├── keymaps.lua       # Keybindings
│   ├── plugins.lua       # Plugin configuration
│   ├── lsp.lua           # LSP config
│   └── vimtex.lua        # VimTeX config
└── snippets/             # Custom snippets
```

**Ricarica configurazione:**
```vim
:source ~/.config/nvim/init.lua
" oppure riavvia Neovim
```

---

**Ultimo aggiornamento:** 2026-02-14
**Versione configurazione:** Custom Setup v2.0
