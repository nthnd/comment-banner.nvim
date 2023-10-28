M = {}

local config = {
    topLeft            = '╭',
    topRight           = '╮',
    bottomLeft         = '╰',
    bottomRight        = '╯',
    horizontal         = '─',
    vertical           = '│',

    defaultCommentChar = "--",
}

local commentCharsLookup = {
    bash       = "#",
    c          = "//",
    clojure    = "#",
    cpp        = "//",
    javascript = "//",
    lisp       = "#",
    lua        = "--",
    python     = "#",
    rust       = "//",
    typescript = "//",
    vim        = "\"",
}

-- ╭────────────────────╮
-- │ The magic function │
-- ╰────────────────────╯

M.createComment = function()
    local userInput = vim.fn.input('Section name: ')

    if #userInput == 0 then return end

    local commentChars = commentCharsLookup[vim.bo.filetype] or config.defaultCommentChar

    local lines = {
        commentChars .. ' ' .. config.topLeft .. string.rep(config.horizontal, #userInput + 2) .. config.topRight,
        commentChars .. ' ' .. config.vertical .. ' ' .. userInput .. ' ' .. config.vertical,
        commentChars .. ' ' .. config.bottomLeft .. string.rep(config.horizontal, #userInput + 2) .. config.bottomRight,
    }

    vim.api.nvim_put(lines, "l", false, true)
end

M.setup = function(userConfig)
    config = vim.tbl_extend("force", config, userConfig)
end

return M
