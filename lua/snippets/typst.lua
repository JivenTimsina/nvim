local fmt = require("luasnip.extras.fmt").fmt
local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node

return{ s("Add",
    fmt([[
#Add([{}],
[{}],
[{}],
[{}],
[{}],
)
]], {
        i(1, ""),
        i(2, ""),
        i(3, ""),
        i(4, ""),
        i(5, ""),
    })),

 s("add",
    fmt([[
#add([{}],
[{}],
[{}],
[{}],
)
]], {
        i(1, ""),
        i(2, ""),
        i(3, ""),
        i(4, ""),
    })),

 s("doc",
    fmt([[
#set page(
	paper: "a4",
	margin: 1in,
)

#set text(
	font: "Times New Roman",
	size: 14pt,
	lang: "en",
)

#set par(
	justify: true,
	leading: 1em,
)
]],
{}))
}
