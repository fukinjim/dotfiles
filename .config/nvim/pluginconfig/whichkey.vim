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
    S = {
	    name = "+Session",
	    c = { "<cmd>:SClose<cr>", "Close session" },
	    s = { "<cmd>:SSave<cr>", "Save session" },
	    l = { ":SLoad ", "Load a session" },
	    d = { ":SDelete ", "Delete a session" },
	    D = { "<cmd>:SDelete<cr>", "Delete this session" },
    },
    f = {
	    name = "+files",
	    B = { ":NERDTreeFromBookmark", "NERDTree Bookmarks" },
	    F = { "<cmd>:NERDTreeFind<cr>", "Open NERDTree at current file" },
	    f = { "<cmd>:NERDTreeToggle<cr>", "Toggle NERDTree" },
	    n = { "<cmd>:enew<cr>", "New blank file in this window" },
	    N = { "<cmd>:new<cr>", "New blank file in a new window" },
	    o = { "<cmd>:Files<cr>", "Open File(s)" },
	    O = { "<cmd>:History<cr>", "Open Recent File(s)" },
	    s = { "<cmd>:Startify<cr>", "Start page" },
	    t = { "<cmd>:tabnew<cr>", "New blank file in a new tab" },
    },
  },
})
--todo make whichkey ignore jj and kk in insert mode
EOF
