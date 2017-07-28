" Vim syntax file
" Language:		elvish (elv)
" Maintainer:	Daniel McGrady <daniel.p.mcgrady@gmail.com>
" Last Change:	July 27, 2017
" Version:		0.1
" URL:          https://github.com/dmix/elvish.vim
" License:      MIT

" ==============================================================================
" Elvish Syntax
" ==============================================================================

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = 'elvish'

" Matchers
" -----------------------------------------------------------------------------

" Keywords
syn keyword elvishKeywords      fn
syn keyword elvishConditional   if then elif else fi
syn keyword elvishRepeat        while do done
syn keyword elvishRepeat        for in
syn keyword elvishException     try except finally tried
syn keyword elvishKeywords      begin end
syn keyword elvishUse           use
syn keyword elvishSpecial       print echo put break fail return
syn keyword elvishBuiltins      constantly bool range each base wcswidth eq ord is count repeat joins keys splits
syntax match elvishBuiltins     "path-base"
syntax match elvishBuiltins     "tilde-abbr"
syntax match elvishBuiltins     "has-key"
syntax match elvishBuiltins     "has-value"
syntax match elvishBuiltins     "has-suffix"
syntax match elvishBuiltins     "has-prefix"

" Numbers
syn match   elvishNumber          "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syn match   elvishNumber          "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syn match   elvishNumber          "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
syn match   elvishNumber          "\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"

" Operators
syntax match elvishOperator "\v\*"
syntax match elvishOperator "\v/"
syntax match elvishOperator "\v\+"
syntax match elvishOperator "\v-"
syntax match elvishOperator "\v\?"
syntax match elvishOperator "\v\*\="
syntax match elvishOperator "\v/\="
syntax match elvishOperator "\v\+\="
syntax match elvishOperator "\v-\="
syntax match elvishOperator "\v\=\="
syntax match elvishOperator "\v\^"
syntax match elvishOperator "\v\%"
syntax match elvishOperator "\v\>"
syntax match elvishOperator "\v\<"

" Comments
syn match   elvishLineComment   "\v#.*$"

" Functions
syn match   elvishFunction      "\%(^\s*fn\s\+\)\@<=\%(\w\|-\)*"

" Variables
syn match   elvishDeref         '\$[!#$*@?_-]\w\@!'
syn match   elvishDeref         '\$[=^~]*[#+]*\d\+\>'

" Strings
syn match   elvishQuoted       '\\.'
syn region  elvishString        matchgroup=elvishStringDelimiter start=+"+ end=+"+ contains=elvishQuoted,@elvishDerefs,@elvishSubst
syn region  elvishString        matchgroup=elvishStringDelimiter start=+'+ end=+'+
syn region  elvishPOSIXString   matchgroup=elvishStringDelimiter start=+\$'+ end=+'+ contains=elvishQuoted

" Highlight
" -----------------------------------------------------------------------------
 
hi link elvishKeywords          Keyword
hi link elvishSpecial           Keyword
hi link elvishLineComment       Comment
hi link elvishUse               Include
hi link elvishRepeat            Repeat
hi link elvishException         Exception
hi link elvishConditional       Conditional
hi link elvishFunction          Function
hi link elvishString	        String
hi link elvishStringDelimiter   elvishString
hi link elvishPOSIXString	    elvishString
hi link elvishDeref             PreProc
hi link elvishOperator          Operator
hi link elvishBuiltins          Operator
hi link elvishNumber			Number
