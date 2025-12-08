local M = {}

function M.get_by_name(name, type)
  if type == "bg" then
    return string.format("#%06x", vim.api.nvim_get_hl_by_name(name, true).background)
  else
    return string.format("#%06x", vim.api.nvim_get_hl_by_name(name, true).foreground)
  end
end

return M
