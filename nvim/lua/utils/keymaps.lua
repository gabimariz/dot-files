local M = {}

function M.set_map(mode, lhs, rhs, desc, opts)
  local options = opts or {
    noremap = true,
    silent = true,
    desc = desc or "",
  }

  vim.keymap.set(mode, lhs, rhs, options)
end

function M.set_maps(maps)
  for _, map in ipairs(maps) do
    M.set_map(map.mode, map.lhs, map.rhs, map.desc, map.opts)
  end
end

function M.set_map_cmd(mode, lhs, text, command, desc, opts)
  M.set_map(mode, lhs, function()
    local cmd_result = vim.fn.input(text)

    vim.cmd(cmd_result .. command)
  end, desc, opts)
end

return M
