local M = {}
local terminal_buf

function M.toggle()
    if vim.bo.buftype == "" and vim.api.nvim_buf_get_name(0) ~= "" then
        vim.cmd.update()
    end

    if terminal_buf and vim.api.nvim_buf_is_valid(terminal_buf) then
        local win = vim.fn.bufwinid(terminal_buf)
        if win ~= -1 then
            if #vim.api.nvim_tabpage_list_wins(0) == 1 then
                vim.api.nvim_win_set_buf(win, vim.api.nvim_create_buf(true, false))
            else
                vim.api.nvim_win_close(win, false)
            end
            return
        end
    else
        terminal_buf = nil
    end

    local is_new = terminal_buf == nil
    if is_new then
        terminal_buf = vim.api.nvim_create_buf(false, true)
        vim.bo[terminal_buf].bufhidden = "hide"
    end

    local win = vim.api.nvim_open_win(terminal_buf, true, {
        split = "right",
        win = -1,
        width = math.floor((vim.o.columns - 1) / 2),
    })
    vim.wo[win].number = false
    vim.wo[win].relativenumber = false
    vim.wo[win].signcolumn = "no"

    if is_new then
        local buf = terminal_buf
        vim.fn.jobstart(vim.o.shell, {
            term = true,
            on_exit = function()
                vim.schedule(function()
                    if terminal_buf == buf then
                        terminal_buf = nil
                    end
                    if vim.api.nvim_buf_is_valid(buf) then
                        vim.api.nvim_buf_delete(buf, { force = true })
                    end
                end)
            end,
        })
    end

    vim.cmd.startinsert()
end

return M
