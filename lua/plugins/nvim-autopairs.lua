local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

local npairs = require("nvim-autopairs")

npairs.setup({
	check_ts = true
})
