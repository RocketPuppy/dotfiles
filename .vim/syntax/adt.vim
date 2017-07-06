syn match adtOp ":\|,\|\(->\)"
syn match adtDelim "{\|}\|(\|)"
syn match adtDef "=" nextgroup=adtType skipwhite skipnl
syn match adtBar "|" nextgroup=adtType skipwhite skipnl
"syn match hsConSym "\(\<[A-Z][a-zA-Z0-9_']*\.\)\=:[-!#$%&\*\+./<=>\?@\\^|~:]*"
syn keyword adtKey type
"These are backwards, but there's some wierd voodoo name so when I make them
"the right way they don't match
syn match adtType  /\(\<[A-Z][a-zA-Z]*\>\)/ contained
syn match adtValue /\(\<[A-Z][a-zA-Z]*\>\)/
syn match adtTypeVar /\(\<[a-z][a-zA-Z]*\>\)/
syn match adtFun /[a-z][a-zA-Z]* :/me=e-1

hi def link adtType Constant
hi def link adtKey Operator
hi def link adtDelim Delimiter
hi def link adtOp Operator
hi def link adtDef Operator
hi def link adtBar Operator
hi def link adtValue Type
hi def link adtTypeVar Identifier
hi def link adtFun Constant
