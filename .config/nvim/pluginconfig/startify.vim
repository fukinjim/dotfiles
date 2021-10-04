let g:startify_custom_header = [
	\ "     ,                                                                                                         ;"           ,
	\ "     Et                                                                                                        ED."         ,
	\ "     E#t     :             ., G:          L.                               L.                     ,;           E#Wi"        ,
	\ "     E##t    Ef           ,Wt E#,    :t   EW:        ,ft         .Gt       EW:        ,ft       f#i j.         E###G."      ,
	\ "     E#W#t   E#t         i#D. E#t  .GEEj  E##;       t#E        j#W:       E##;       t#E     .E#t  EW,        E#fD#W;"     ,
	\ "     E#tfL.  E#t        f#f   E#t j#K;E#, E###t      t#E      ;K#f         E###t      t#E    i#W,   E##j       E#t t##L"    ,
	\ "     E#t     E#t      .D#i    E#GK#f  E#t E#fE#f     t#E    .G#D.          E#fE#f     t#E   L#D.    E###D.     E#t  .E#K,"  ,
	\ "  ,ffW#Dffj. E#t fi  :KW,     E##D.   E#t E#t D#G    t#E   j#K;            E#t D#G    t#E :K#Wfff;  E#jG#W;    E#t    j##f" ,
	\ "   ;LW#ELLLf.E#t L#j t#f      E##Wi   E#t E#t  f#E.  t#E ,K#f   ,GD;       E#t  f#E.  t#E i##WLLLLt E#t t##f   E#t    :E#K:",
	\ "     E#t     E#t L#L  ;#G     E#jL#D: E#t E#t   t#K: t#E  j#Wi   E#t       E#t   t#K: t#E  .E#L     E#t  :K#E: E#t   t##L"  ,
	\ "     E#t     E#tf#E:   :KE.   E#t ,K#jE#t E#t    ;#W,t#E   .G#D: E#t       E#t    ;#W,t#E    f#E:   E#KDDDD###iE#t .D#W;"   ,
	\ "     E#t     E###f      .DW:  E#t   jDE#t E#t     :K#D#E     ,K#fK#t       E#t     :K#D#E     ,WW;  E#f,t#Wi,,,E#tiW#G."    ,
	\ "     E#t     E#K,         L#, j#t     E#t E#t      .E##E       j###t       E#t      .E##E      .D#; E#t  ;#W:  E#K##i"      ,
	\ "     E#t     EL            jt  ,;     E#t ..         G#E        .G#t       ..         G#E        tt DWi   ,KK: E##D."       ,
	\ "     ;#t     :                        ,;.             fE          ;;                   fE                      E#t"         ,
	\ "      :;                                               ,                                ,                      L:"          ,
	\ ]

" let g:startify_custom_header = [
" 	\ ".sSSSSs.    .sSSS s.    .sSSSSs.    .sSSS  SSSSS  SSSSS .sSSSs.  SSSSS .sSSSSs.         .sSSSs.  SSSSS .sSSSSs.    .sSSSSs.    .sSSSSs.",
" 	\ "SSSSSSSSSs. SSSSS SSSs. SSSSSSSSSs. SSSSS  SSSSS  SSSSS SSSSS SS SSSSS SSSSSSSSSs.      SSSSS SS SSSSS SSSSSSSSSs. SSSSSSSSSs. SSSSSSSSSs.",
" 	\ "S SSS SSSS' S SSS SSSSS S SSS SSSSS S SSS SSSSS   S SSS S SSS  `sSSSSS S SSS SSSSS      S SSS  `sSSSSS S SSS SSSS' S SSS SSSSS S SSS SSSSS",
" 	\ "S  SS       S  SS SSSSS S  SS SSSS' S  SS SSSSS   S  SS S  SS    SSSSS S  SS SSSS'      S  SS    SSSSS S  SS       S  SS SSSS' S  SS SSSSS",
" 	\ "S..SSsss    S..SS SSSSS S..SS       S..SSsSSSSS   S..SS S..SS    SSSSS S..SS            S..SS    SSSSS S..SSsss    S..SSsSSSa. S..SS SSSSS",
" 	\ "S:::SSSS    S:::S SSSSS S:::S SSSSS S:::S SSSSS   S:::S S:::S    SSSSS S:::S`sSSs.      S:::S    SSSSS S:::SSSS    S:::S SSSSS S:::S SSSSS",
" 	\ "S;;;S       S;;;S SSSSS S;;;S SSSSS S;;;S  SSSSS  S;;;S S;;;S    SSSSS S;;;S SSSSS      S;;;S    SSSSS S;;;S       S;;;S SSSSS S;;;S SSSSS",
" 	\ "S%%%S       S%%%S SSSSS S%%%S SSSSS S%%%S  SSSSS  S%%%S S%%%S    SSSSS S%%%S SSSSS      S%%%S    SSSSS S%%%S SSSSS S%%%S SSSSS S%%%S SSSS'",
" 	\ "SSSSS       SSSSSsSSSSS SSSSSsSSSSS SSSSS   SSSSS SSSSS SSSSS    SSSSS SSSSSsSSSSS      SSSSS    SSSSS SSSSSsSS;:' SSSSS SSSSS SSSSSsS;:'",
"     \ ]

let g:startify_lists = [
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'files',     'header': ['   Files']            },
  \ { 'type': 'dir',       'header': ['   '. getcwd()] },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'commands',  'header': ['   Commands']       },
  \ ]

let g:startify_bookmarks = [ {'c': '~/.config'}, '~/.zshrc' ]
let g:startify_files_number = 10
