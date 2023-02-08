-- 在 neovim 中使用 :help xdg 查看配置文件，临时文件等文件的目录规范

vim = vim

require "nvim.options"

require "nvim.keymaps"

require "nvim.plugins.bootstrap"

vim.cmd "colorscheme tokyonight"
