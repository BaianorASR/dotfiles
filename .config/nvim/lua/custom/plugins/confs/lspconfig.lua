
local M = {}

M.setup_lsp = function(attach, capabilities)


 local lspconfig = require "lspconfig"
 lspconfig.tsserver.setup {
      on_attach = function(client, bufnr)
         client.resolved_capabilities.document_formatting = false
         vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
      end,
   }


   local lsp_installer = require "nvim-lsp-installer"

   lsp_installer.on_server_ready(function(server)
      local opts = {
         on_attach = attach,
         capabilities = capabilities,
         flags = {
            debounce_text_changes = 150,
         },
         settings = {},
      }

      if server.name == "rust_analyzer" then
         opts.settings = {
            ["rust-analyzer"] = {
               experimental = {
                  procAttrMacros = true,
               },
               checkOnSave = {
                        command = "clippy",
                    },
            },
         }

         opts.on_attach = function(client, bufnr)
            local function buf_set_keymap(...)
               vim.api.nvim_buf_set_keymap(bufnr, ...)
            end

            -- Run nvchad's attach
            attach(client, bufnr)

            -- Use nvim-code-action-menu for code actions for rust
            buf_set_keymap("n", "<leader>ca", "lua vim.lsp.buf.range_code_action()<CR>", { noremap = true, silent = true })

            -- autoformat on save
            if client.resolved_capabilities.document_formatting then
                    vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
                end
         end
      end

      server:setup(opts)
      vim.cmd [[ do User LspAttachBuffers ]]
   end)
end

return M
