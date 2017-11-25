set background=dark
highlight clear
if exists("syntax on")
	syntax reset
endif
let g:colors_name="mofios"
hi Normal guifg=#e8d0c3 guibg=#202020
hi Comment guifg=#404040 guibg=NONE
hi Constant guifg=#75507b guibg=NONE
hi String guifg=#b7ca4b guibg=NONE
hi htmlTagName guifg=#bf3f34 guibg=NONE
hi Identifier guifg=#95b9de guibg=NONE
hi Statement guifg=#8f2828 guibg=NONE
hi PreProc guifg=#ff80ff guibg=NONE
hi Type guifg=#60ff60 guibg=NONE
hi Function guifg=#75507b guibg=NONE
hi Repeat guifg=#000000 guibg=NONE
hi Operator guifg=#95b9de guibg=NONE
hi Error guibg=#ff0000 guifg=#ffffff
hi TODO guibg=#0011ff guifg=#ffffff
hi link character	constant
hi link number	constant
hi link boolean	constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link htmlTag	Special
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special