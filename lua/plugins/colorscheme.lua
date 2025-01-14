return {
  'sainnhe/sonokai',

  config = function()
    vim.cmd("let g:sonokai_diagnostic_virtual_text = 'colored'")

    vim.cmd.colorscheme("sonokai")
  end
}
