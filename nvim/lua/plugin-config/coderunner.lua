require('code_runner').setup({
    -- put here the commands by filetype
    filetype = {
          java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
          python = "python -u",
          c = "cd $dir && gcc $fileName && ./a.out",
          cpp = "cd $dir && g++ $fileName && ./a.out",
      },
})

vim.api.nvim_set_keymap("n", "<F5>", ":RunCode<CR>", {noremap = true, silent = false})
