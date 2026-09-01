return {
    cmd = { "roslyn-language-server", "--stdio", "--logLevel=information", "--autoLoadProjects" },
    filetypes = { "cs", "razor" },
    root_markers = { "*.csproj", ".git", "*.sln" },
}
