return {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
    root_markers = { ".git", "tsconfig.json", "package.json" },
    single_file_support = true
}
