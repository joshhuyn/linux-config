-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins =
{
  {
    "mfussenegger/nvim-jdtls",
  },
  {
    'ofirgall/ofirkai.nvim'
  },
  {
    'tanvirtin/monokai.nvim'
  }
}

-- java lsp see: https://medium.com/@chrisatmachine/lunarvim-as-a-java-ide-da65c4a77fb4

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, {"jdtls"})

lvim.builtin.treesitter.ensure_installed = { "java", }

-- java lsp end

lvim.colorscheme = "ofirkai-darkblue"

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.wrap = false
vim.opt.smartcase = true

if vim.g.neovide then
    vim.g.neovide_scale_factor = 0.5

    local neovide_padding = 10

    vim.g.neovide_padding_top = neovide_padding
    vim.g.neovide_padding_bottom = neovide_padding
    vim.g.neovide_padding_right = neovide_padding
    vim.g.neovide_padding_left = neovide_padding

    vim.g.neovide_transparency = 0.9
end
