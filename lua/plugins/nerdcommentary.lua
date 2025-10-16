return {
  "preservim/nerdcommenter",
  config = function()
    -- Desativa os mapeamentos padrões
    --vim.g.NERDCreateDefaultMappings = 0

    -- Define seus próprios mapeamentos invertidos
    vim.keymap.set("n", "<leader>cc", "<plug>NERDCommenterToggle", { silent = true, desc = "Toggle comment" })
    vim.keymap.set("x", "<leader>cc", "<plug>NERDCommenterToggle", { silent = true, desc = "Toggle comment (visual)" })

    vim.keymap.set("n", "<leader>c<space>", "<plug>NERDCommenterComment", { silent = true, desc = "Add comment" })
    vim.keymap.set("x", "<leader>c<space>", "<plug>NERDCommenterComment", { silent = true, desc = "Add comment (visual)" })
  end,
}

