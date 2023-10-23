return {
  "L3MON4D3/LuaSnip",
  config = function()
    local ls = require("luasnip")

    vim.keymap.set({ "i", "s" }, "<C-n>", function()
      if ls.jumpable(1) then
        ls.jump(1)
      end
    end, { silent = true })

    vim.keymap.set({ "i", "s" }, "<C-p>", function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      end
    end, { silent = true })

    ls.filetype_extend("typescriptreact", { "typescript" })
    require("luasnip.loaders.from_lua").lazy_load({ paths = { "~/.config/lazyvim/lua/snippets/" } })
  end,
}
