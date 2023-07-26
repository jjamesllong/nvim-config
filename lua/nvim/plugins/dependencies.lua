return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require "nvim.plugins.setup.tokyonight_nvim"
        end
    },

    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require "nvim.plugins.setup.lualine_nvim"
        end
    },
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons", -- optional, for file icons
        },
        config = function()
            require "nvim.plugins.setup.nvim_tree"
        end
    },
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "lewis6991/gitsigns.nvim",
        },
        config = function()
            require "nvim.plugins.setup.barbar_nvim"
        end,
        init = function()
            vim.g.barbar_auto_setup = false
        end,
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require "nvim.plugins.setup.mason_nvim"
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
        },
        config = function()
            require "nvim.plugins.setup.mason_lspconfig_nvim"
        end
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            require "nvim.plugins.setup.nvim_lspconfig"
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require "nvim.plugins.setup.nvim_treesitter"
        end
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "saadparwaiz1/cmp_luasnip",
            "L3MON4D3/LuaSnip",
        },
        config = function()
            require "nvim.plugins.setup.nvim_cmp"
        end
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require "nvim.plugins.setup.telescope_nvim"
        end
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require "nvim.plugins.setup.nvim_autopaires"
        end
    },
    {
        "numToStr/Comment.nvim",
        config = function()
            require "nvim.plugins.setup.comment_nvim"
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        config = function()
            require "nvim.plugins.setup.nvim_treesitter_context"
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require "nvim.plugins.setup.gitsigns_nvim"
        end
    },
}
