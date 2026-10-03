" Quit when a syntax file was already loaded.
" test
if exists('b:current_syntax') | finish |  endif
"
"syn keyword bcKW fun 
syn match bcHeader "^.*===.*===$"
syn match bcBullet "^\s-\s.*$" contains=bcBracket
syn match bcBulletArrow "^>\s.*$" contains=bcBracket
syn match bcSubBullet "^\s\s\s-\s.*$" 
syn match bcBulletPriority "^\s--\s.*$" contains=bcBracket
syn match bcComplete "^.*+\s.*$"
syn match bcBracket "<.*>"
syn region bcBracket start="<" end=">" 
syn match bcComment ".*#.*$"
"
"hi def link bcKW Todo 
hi def link bcHeader bcHeader 
hi def link bcBullet bcBullet
hi def link bcBulletArrow bcBulletArrow
hi def link bcSubBullet bcSubBullet
hi def link bcBulletPriority bcBulletPriority 
hi def link bcComplete bcComplete 
hi def link bcBracket bcBracket
hi def link bcComment bcComment
"
let b:current_syntax = 'bigcity'

" == cterm-color ==
"Black
"DarkBlue
"DarkGreen
"DarkCyan
"DarkRed
"DarkMagenta
"Brown, DarkYellow
"LightGray, LightGrey, Gray, Grey
"DarkGray, DarkGrey
"Blue, LightBlue
"Green, LightGreen
"Cyan, LightCyan
"Red, LightRed
"Magenta, LightMagenta
"Yellow, LightYellow
"White
"
" == term ==
"bold
"underline
"undercurl	not always available
"underdouble	not always available
"underdotted	not always available
"underdashed	not always available
"strikethrough	not always available
"reverse
"inverse		same as reverse
"italic
"standout
"nocombine	override attributes instead of combining them
"NONE		no attributes used (used to reset it)

hi bcHeader term=underline cterm=underline gui=underline ctermfg=White ctermbg=DarkMagenta guifg=White guibg=DarkMagenta
hi bcBullet term=NONE cterm=NONE gui=NONE ctermfg=Grey ctermbg=NONE guifg=Grey guibg=NONE
hi bcBulletArrow term=NONE cterm=NONE gui=NONE ctermfg=White ctermbg=NONE guifg=White guibg=NONE
hi bcSubBullet term=underline cterm=underline ctermfg=White ctermbg=DarkCyan gui=underline guifg=White guibg=DarkCyan
hi bcBulletPriority term=NONE cterm=NONE gui=NONE ctermfg=White ctermbg=DarkCyan guifg=White guibg=DarkCyan
hi bcComplete term=strikethrough cterm=strikethrough gui=strikethrough ctermfg=LightGreen ctermbg=NONE guifg=LightGreen guibg=NONE
hi bcBracket term=NONE cterm=NONE ctermfg=Yellow gui=bold guifg=Yellow
hi bcComment term=NONE cterm=NONE ctermfg=DarkGray gui=NONE guifg=DarkGray
