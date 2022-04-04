" Vim syntax file
" Language:     elvish (elv)
" Maintainer:   Daniel McGrady <daniel.p.mcgrady@gmail.com>
" Last Change:  July 27, 2017
" Version:      0.1
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
syn keyword elvishKeywords      fn var
syn keyword elvishConditional   if then elif else fi
syn keyword elvishRepeat        while do done for
syn keyword elvishException     try except finally
syn keyword elvishUse           use

" Builtin functions
syn keyword elvishBuiltins      print echo put break fail return each bool range 
syn keyword elvishBuiltins      count repeat joins keys splits  wcswidth constantly
syn keyword elvishBuiltins      base eq ord is all assoc cd chr constantly count
syn keyword elvishBuiltins      dissoc drop eawk exec exit explode external fail
syn keyword elvishBuiltins      fclose fopen nop peach pprint rand randint resolve
syn keyword elvishBuiltins      src styled take slurp
syn match elvishBuiltins        "path-base"
syn match elvishBuiltins        "tilde-abbr"
syn match elvishBuiltins        "has-key"
syn match elvishBuiltins        "has-value"
syn match elvishBuiltins        "has-suffix"
syn match elvishBuiltins        "has-prefix"
syn match elvishBuiltins        "get-env"
syn match elvishBuiltins        "set-env"
syn match elvishBuiltins        "unset-env"
syn match elvishBuiltins        "styled-segment"
syn match elvishBuiltins        "tilde-abbr"
syn match elvishBuiltins        "to-json"
syn match elvishBuiltins        "from-json"
syn match elvishBuiltins        "not-eq"


" Numbers
syn match   elvishNumber          "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syn match   elvishNumber          "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syn match   elvishNumber          "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
syn match   elvishNumber          "\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"

" Operators
syn keyword elvishOperator not and or
syn match elvishOperator "\v\*"
syn match elvishOperator "\v/"
syn match elvishOperator "\v\+"
syn match elvishOperator "\v-"
syn match elvishOperator "\v\?"
syn match elvishOperator "\v\*\="
syn match elvishOperator "\v/\="
syn match elvishOperator "\v\+\="
syn match elvishOperator "\v-\="
syn match elvishOperator "\v\=\="
syn match elvishOperator "\v\^"
syn match elvishOperator "\v\%"
syn match elvishOperator "\v\>"
syn match elvishOperator "\v\<"

" Comments
syn match   elvishLineComment   "\v#.*$"

" Functions
syn match   elvishFunction      "\%(^\s*fn\s\+\)\@<=\%(\w\|-\)*"

" Parentheses
syn region  elvishParen0 matchgroup=hlParen0 start="(" end=")" contains=ALLBUT,elvishParen0,elvishParen2,elvishParen3
syn region  elvishParen1 matchgroup=hlParen1 start="(" end=")" contains=ALLBUT,elvishParen0,elvishParen1,elvishParen3 contained
syn region  elvishParen2 matchgroup=hlParen2 start="(" end=")" contains=ALLBUT,elvishParen0,elvishParen1,elvishParen2 contained
syn region  elvishParen3 matchgroup=hlParen3 start="(" end=")" contains=ALLBUT,elvishParen1,elvishParen2,elvishParen3 contained

syn region  elvishLambda start="{" end="}" fold contains=ALLBUT,elvishParen1,elvishParen2,elvishParen3

" Variables
syn match   elvishDeref         '\$[!#$*@?_-]\w\@!'
syn match   elvishDeref         '\$[=^~]*[#+]*\d\+\>'
syn match   elvishDeref         '\$@\?\i\+'
syn match   elvishDeref         '@\i\+'

" Strings
syn match   elvishQuoted       '\\.'
syn region  elvishString        matchgroup=elvishStringDelimiter start=+"+ end=+"+ contains=elvishQuoted,@elvishDerefs,@elvishSubst
syn region  elvishString        matchgroup=elvishStringDelimiter start=+'+ end=+'+
syn region  elvishPOSIXString   matchgroup=elvishStringDelimiter start=+\$'+ end=+'+ contains=elvishQuoted

" Highlight
" -----------------------------------------------------------------------------
 
hi link elvishKeywords          Keyword
hi link elvishLineComment       Comment
hi link elvishUse               Include
hi link elvishRepeat            Repeat
hi link elvishException         Exception
hi link elvishConditional       Conditional
hi link elvishFunction          Function
hi link elvishString            String
hi link elvishStringDelimiter   elvishString
hi link elvishPOSIXString       elvishString
hi link elvishDeref             PreProc
hi link elvishOperator          Operator
hi link elvishBuiltins          Keyword
hi link elvishNumber            Number

hi def hlParen0 ctermfg=yellow  guifg=yellow1
hi def hlParen1 ctermfg=cyan    guifg=greenyellow
hi def hlParen2 ctermfg=magenta guifg=purple1
hi def hlParen3 ctermfg=green   guifg=green1
