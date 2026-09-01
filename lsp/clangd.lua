local clangd_candidates = {
    "/opt/homebrew/opt/llvm/bin/clangd",
    "/usr/local/opt/llvm/bin/clangd",
    "/Library/Developer/CommandLineTools/usr/bin/clangd",
}

local clangd = "clangd"
for _, candidate in ipairs(clangd_candidates) do
    if vim.fn.executable(candidate) == 1 then
        clangd = candidate
        break
    end
end

return {
    cmd = { clangd, "--header-insertion=never", "--completion-style=detailed", "--function-arg-placeholders=false" },
    filetypes = { "c", "cpp", "h", "hpp" },
    root_markers = { ".clangd", "compile_commands.json", "compile_flags.txt", ".git" },
}
