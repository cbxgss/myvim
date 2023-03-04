return function()
    require('code_runner').setup({
        -- put here the commands by filetype
        filetype = {
            java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
            python = "python -u",
            c = "cd $dir && gcc $fileName && ./a.out",
            cpp = "cd $dir && g++ $fileName && ./a.out",
        },
    })
end
