local packer = require("packer")
packer.startup({
  function(use)
    -- Packer 可以管理自己本身
    use 'wbthomason/packer.nvim'
    -- 你的插件列表...
        -- tokyonight
    use("folke/tokyonight.nvim")
    ------------------------------------------------------
     -- nvim-tree (新增)
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
    -- using packer.nvim
    use({'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'})
  
    -- lualine (新增)
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })

   -- telescope （新增）
    use ({ 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } })

      -- telescope extensions
    use ("LinArcX/telescope-env.nvim")
    
        -- dashboard-nvim (新增)
    use("glepnir/dashboard-nvim")
    -- treesitter （新增）
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
        
  end,
  config = {
             max_jobs = 16,
    -- 自定义源
            git = {
                  },
            display = {
                  open_fn = function()
                  return require("packer.util").float({ border = "single" })
          end}

  },
})

-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)

