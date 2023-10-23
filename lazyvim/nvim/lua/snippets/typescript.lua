local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("typescript", {
  s("dob", {
    t("const { "),
    i(2),
    t(" } = "),
    i(1),
  }),
  s("dop", {
    t("{ "),
    i(2),
    t(" }: "),
    i(1),
  }),
  s("function2", {
    t("function "),
    i(1, "name"),
    t("("),
    i(2),
    t({ ") {", "  " }),
    i(3),
    t({ "", "}" }),
  }),
})
