return {
"shaunsingh/nord.nvim",
 	lazy = false,
 	priority = 10000,
	config = function()
    vim.g.nord_contrast = true
    vim.g.nord_borders = false
    vim.g.nord_disable_background = true
    vim.g.nord_italic = false
 		vim.g.nord_uniform_diff_background = true
 		vim.g.nord_bold = false
	  require('nord').set()

    -- Toggle Background transparency
    local bg_transparent_disable = true

    local toggle_transparency = function()
      bg_transparent_disable = not bg_transparent_disable
      vim.g.nord_disable_background = bg_transparent_disable
      vim.cmd [[colorscheme nord]]
    end

    vim.keymap.set({'n'}, '<leader>bg', toggle_transparency, { noremap = true, silent = false })
    

  end
}
