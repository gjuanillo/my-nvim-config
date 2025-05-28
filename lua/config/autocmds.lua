-- Setup JDTLS server any time we open a Java file
vim.api.nvim_create_augroup("jdtls_lsp", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = "jdtls_lsp",
  pattern = "java",
  callback = function()
    local ok, err = pcall(require('config.jdtls').setup_jdtls)
    if not ok then
      vim.notify("Error starting JDTLS: " .. err, vim.log.levels.ERROR)
    else
      vim.notify("JDTLS setup ran successfully", vim.log.levels.INFO)
    end
  end,
})
