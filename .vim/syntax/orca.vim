" Vim syntax file
" Language: orca input files 4.0.1
" Maintainer: Nico Spiller ( spiller@kofo.mpg.de )
" Latest Revision 14 February 2018

" check if there is a syntax assigned already
if exists("b:current_syntax")
	finish
endif

" name for syntax
let b:current_syntax = "orca"

" definition of rules
syn keyword orcaLanguageKeywords end 
syn match orcaLanguageKeywords "%\S*"
syn region orcaBlock start="%" end="end" fold transparent 
syn region orcaCoordBlock start="^*" end="^*" fold 
syn match orcaComment "#.*$"
syn match orcaInput "^!.*" contains=orcaComment 

" assigning coloring
hi def link orcaComment             Comment
hi def link orcaLanguageKeywords    Statement
hi def link orcaBlock               Constant
hi def link orcaInput               PreProc
hi def link orcaCoordBlock          Constant 
