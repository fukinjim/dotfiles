lua << EOF
require("which-key").setup {}

local wk = require("which-key")
wk.register({
  ["<leader>"] = {
    ["'"] = { "<cmd>:Marks<cr>", "Marks" },
    ["/"] = { "<cmd>:History/<cr>", "Search History" },
    [":"] = { "<cmd>:Commands<cr>", "Available Commands" },
    ["<tab>"] = { "<cmd>:Windows<cr>", "Switch Windows" },
    Q = { "<cmd>:History:<cr>", "Command History" },
    a = { "<cmd>:Ag<cr>", "Silver Surfer" },
    H = { "<cmd>:Helptags<cr>", "Search Helptags" },
    h = { ":h ", "Help" },
    b = { "<cmd>:Buffers<cr>", "Buffers" },
    p = {
	    name = "+Vim-Plug",
	    i = { "<cmd>:PlugInstall<cr>", "Install Plugins" },
	    u = { "<cmd>:PlugUpdate<cr>", "Update Plugins" },
	    U = { "<cmd>:PlugUpgrade<cr>", "Update Vim-Plug" },
	    c = { "<cmd>:PlugClean<cr>", "Clean Plugins" },
	    s = { "<cmd>:PlugStatus<cr>", "Status of Plugins" },
	    e = { "<cmd>:tabedit ~/.config/nvim/plugins.vim<cr>", "Edit Plugins file" }
    },
    f = {
	    name = "+files",
	    f = { "<cmd>:NERDTreeToggle<cr>", "Toggle NERDTree" },
	    F = { "<cmd>:NERDTreeFind<cr>", "Open NERDTree at current file" },
	    B = { ":NERDTreeFromBookmark", "NERDTree Bookmarks" },
	    o = { "<cmd>:Files<cr>", "Open File(s)" },
	    O = { "<cmd>:History<cr>", "Open Recent File(s)" },
	    n = { "<cmd>:enew<cr>", "New blank file in this window" },
	    N = { "<cmd>:new<cr>", "New blank file in a new window" },
	    t = { "<cmd>:tabnew<cr>", "New blank file in a new tab" },
    },
  },
})
--todo make whichkey ignore jj and kk in insert mode
EOF
