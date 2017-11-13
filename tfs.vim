" Vim syntax file
" Language: tfs
" Maintainer: Alexander Krainer
" Latest Revision: 28 March 2017

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword twissMarker		MARKER
syn keyword twissQuad		QUADRUPOLE SEXTUPOLE MULTIPOLE
syn keyword twissDrift 		SBEND RBEND DRIFT RCOLLIMATOR HKICKER VKICKER

syn keyword twissMonitor	MONITOR
syn match latticeBPM		/BPM\S\+/ 
syn match latticeDrift		/DRIFT_[0-9]\+/


syn region property		start="@"  end="\n"
syn region columnNames		start=/^\*/ end="\n" 


syn match tunes 		/@\s\+Q[1,2,x,y]/

"hi def link twissMarker           cppStatement
"hi def link twissDrift             cppStatement

hi def twissMarker 	ctermfg=Green guifg=#00A000
hi def twissDrift 	ctermfg=DarkGray guifg=#A0A0A0
hi def twissQuad 	ctermfg=Yellow guifg=#B08000
hi def twissMonitor 	ctermfg=LightBlue guifg='LightBlue'
hi def twissSexpole 	ctermfg=Cyan
hi def twissColl 	ctermfg=Red
hi def latticeBPM 	ctermfg=LightBlue
hi def latticeDrift 	ctermfg=DarkGray
hi def property 	ctermfg=Yellow
hi def propertyReal 	ctermfg=Yellow
hi def columnNames 	ctermbg=Red guifg=Red gui=bold 
hi def tunes 		ctermfg=Green



let b:current_syntax="tfs"

