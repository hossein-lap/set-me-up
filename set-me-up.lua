#!/usr/bin/env lua

local exec = os.execute

local packages = {
    arch = [[
        vim neovim git
    ]],
    mint = [[
        mg nango emacs
    ]],
}

local current_packages = packages.mint

exec(string.format("echo %s\n", current_packages))

