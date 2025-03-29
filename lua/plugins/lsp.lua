return {
  "neovim/nvim-lspconfig",

  dependencies = {
    -- LSP Stuff
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    --Autocomplete menu
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    --Snippet engine
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip'
  },

  config = function()
    local cmp = require("cmp")
    local cmp_lsp = require("cmp_nvim_lsp")
    local capabilities = vim.tbl_deep_extend(
      "force",
      {},
      vim.lsp.protocol.make_client_capabilities(),
      cmp_lsp.default_capabilities())

    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "clangd", -- C and C++
        "jdtls", -- Java
        "ts_ls", -- Typescript and Javascript
        "gopls", -- Golang
        "lua_ls", -- Lua
        "elixirls", -- Elixer
        "cssls", -- CSS
      },
      handlers = {
        function(server_name)
          local server_config = {
            capabilities = capabilities
          }

          if (server_name == "clangd") then
            server_config.cmd = {
              "clangd",
              "--header-insertion=never"
            }
          end

          require("lspconfig")[server_name].setup(server_config)
        end,
      }
    })

    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    cmp.setup({
      completion = {
        completeopt = 'menu,menuone,noinsert'
      },
      -- window = {
      --   completion = cmp.config.window.bordered(),
      --   documentation = cmp.config.window.bordered(),
      -- },
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        -- [''] = cmp.mapping.select_prev_item(cmp_select),
        ['<D-k>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<D-j>'] = cmp.mapping.select_next_item(cmp_select),
        ['<TAB>'] = cmp.mapping.confirm({ select = true }),
        ["<C-space>"] = cmp.mapping.complete(),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp', max_item_count = 7, keyword_length = 1, group_index=1 },
        { name = 'luasnip', group_index=1 },
        { name = "copilot", group_index=2 },
      }, {
          { name = 'buffer', group_index=1 },
        })
    })

    vim.diagnostic.config({
      float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      },
    })

    local ls = require "luasnip"

    vim.keymap.set({"i", "s"}, "<C-j>", function()
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      end
    end, {silent = true})

    vim.keymap.set({"i", "s"}, "<C-k>", function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      end
    end, {silent = true})


    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    vim.keymap.set('n', '<leader>n', vim.lsp.buf.rename, {})

  end
}
