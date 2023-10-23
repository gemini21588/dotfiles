local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("typescriptreact", {
  s("ternary", {
    t("{"),
    i(1), -- First input (condition)
    t({ " ? (", "  " }),
    i(2),
    t({ "", "" }), -- Second input (if condition is true)
    t({ ") : (", "  " }),
    i(3), -- Third input (if condition is false)
    t({ "" }), -- Second input (if condition is true)
    t({ "", ")}" }),
  }),
})
