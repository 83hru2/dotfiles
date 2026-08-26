vim.pack.add({ "https://github.com/rebelot/heirline.nvim" })

local colors = {
    black = 0x282c34,
    red = 0xe06c75,
    crimson = 0xbe5046,
    green = 0x98c379,
    yellow = 0xe5c07b,
    orange = 0xd19a66,
    blue = 0x61afef,
    magenta = 0xc678dd,
    cyan = 0x56b6c2,
    white = 0xabb2bf,
    gutter_gray = 0x4b5263,
    comment_gray = 0x5c6370,
}

local mode_names = {
    n = "N",
    no = "N?",
    nov = "N?",
    noV = "N?",
    ["no\22"] = "N?",
    niI = "Ni",
    niR = "Nr",
    niV = "Nv",
    nt = "Nt",
    v = "V",
    vs = "Vs",
    V = "VL",
    Vs = "Vs",
    ["\22"] = "VB",
    ["\22s"] = "VB",
    s = "S",
    S = "S_",
    ["\19"] = "^S",
    i = "I",
    ic = "Ic",
    ix = "Ix",
    R = "R",
    Rc = "Rc",
    Rx = "Rx",
    Rv = "Rv",
    Rvc = "Rv",
    Rvx = "Rv",
    c = "C",
    cv = "Ex",
    r = "...",
    rm = "M",
    ["r?"] = "?",
    ["!"] = "!",
    t = "T",
}

local mode_colors = {
    n = "white" ,
    i = "green",
    v = "blue",
    V = "blue",
    ["\22"] = "blue",
    c = "yellow",
    s = "white",
    S = "white",
    ["\19"] = "white",
    R = "orange",
    r = "orange",
    ["!"] = "white",
    t = "red",
}

local Align = {
    provider = "%=",
}

local Space = {
    provider = " ",
}

local SViMode = {
    provider = function(self)
        return " %2(" .. self.mode_names[self.mode].."%)  "
    end,
    hl = function(self)
        local mode = self.mode:sub(1, 1)
        return { bg = self.mode_colors[mode], fg = 0x000000 }
    end,
    -- update = {
    --     "ModeChanged",
    --     pattern = "*:*",
    --     callback = vim.schedule_wrap(function()
    --         vim.cmd("redrawstatus")
    --     end)
    -- },
}

local SFileName = {
    init = function(self)
        self.filename = vim.api.nvim_buf_get_name(0)
    end,
    provider = function(self)
        local filename = vim.fn.fnamemodify(self.filename, ":.")
        if filename == "" then return "[No Name]" end
        return filename
    end,
}

local SFileType = {
    provider = function()
        return vim.bo.filetype
    end,
}

local SRuler = {
    provider = " %3l:%2c %P ",
    hl = function(self)
        local mode = self.mode:sub(1, 1)
        return { bg = self.mode_colors[mode], fg = 0x000000 }
    end,
}

local Statusline = {
    static = {
        mode_names = mode_names,
        mode_colors = mode_colors,
    },
    init = function(self)
        self.mode = vim.fn.mode(1)
    end,
    hl = function(self)
        -- local mode = self.mode:sub(1, 1)
        -- if mode == "n" then
        --     return { bg = "none", fg = "white" }
        -- else
        --     return { bg = self.mode_colors[mode], fg = 0x000000 }
        -- end
        return { bg = "none", fg = "white" }
    end,
    SViMode, Space, Space, SFileName,
    Align,
    SFileType, Space, Space, SRuler,
}

-- require("heirline").setup({
--     statusline = Statusline,
--     -- tabline = {},
--     opts = {
--         colors = colors,
--     },
-- })
