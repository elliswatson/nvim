local M = {}

M.map = {
  n = {
    ["q"] = {":q<CR>"},
    ["Q"]={":qa!<CR>"},
    ["qq"] = {":qa!<CR>","exit vim winthout anything"},

  }
}

return M
