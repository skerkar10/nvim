return {
    cmd = { "clangd", "--header-insertion=never", "--completion-style=detailed", "--function-arg-placeholders=false" },
    filetypes = { "c", "cpp", "h", "hpp" },
    root_markers = { ".git" },
}
