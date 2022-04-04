" Vim syntax file
" Language: Osyris
" Maintainer: Martin Dørum
" Latest Revision: 5 April 2022

if exists("b:current_syntax")
	finish
endif

set iskeyword+=+,-,*,/,=,!,<,>,&,\|,?,@,#,$,%

syntax keyword osyrisKeyword true false none
highlight link osyrisKeyword Keyword

syntax keyword osyrisFunction def set if match while print
syntax keyword osyrisFunction lambda list dict lazy
highlight link osyrisFunction Statement

syntax match osyrisIdentifier "[^ \t(){}\[\].]\+"
highlight link osyrisIdentifier Identifier

syntax match osyrisComment ";.*$"
highlight link osyrisComment Comment

syntax match osyrisOperator "+"
syntax match osyrisOperator "-"
syntax match osyrisOperator "\*"
syntax match osyrisOperator "/"
syntax match osyrisOperator "=="
syntax match osyrisOperator "!="
syntax match osyrisOperator "<"
syntax match osyrisOperator "<="
syntax match osyrisOperator ">"
syntax match osyrisOperator ">="
syntax match osyrisOperator "||"
syntax match osyrisOperator "&&"
syntax match osyrisOperator "??"
syntax match osyrisOperator "\."
highlight link osyrisOperator Operator

syntax match osyrisString "'[^ \t(){}\[\].]\+"
syntax region osyrisString start=/"/ skip=/\\./ end=/"/
highlight link osyrisString String

syntax match osyrisNumber "[0-9]\+#[0-9a-fA-F]\+\(\.[0-9a-fA-F]\+\)\{,1\}"
syntax match osyrisNumber "[0-9]\+\(\.[0-9]\+\)\{,1\}"
highlight link osyrisNumber Number

let b:current_syntax = "osyris"
