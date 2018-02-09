\version "2.18.2"
#(set-global-staff-size 22)

\paper{
  paper-width = 11\in
  paper-height = 8.5\in
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  ragged-last-bottom = ##t
  indent = 0.0\cm
}

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Small Music" }
subtitle ="  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "For Ukulele and Live Electronics" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}


\score{
\header{
tagline=""
piece = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1
         "Cycle:" }
}
\midi {}
\layout{}

%part0


}



\markup{
\line{
  \hspace #30

\column{
\huge "Performance Instructions:"
" "
" "
\small "NEXT can be triggered"
\small "with the space bar after"
\small "cues have been enabled."
" "
\small "Score transposed to be"
\small "read like guitar in"
\small "first position."
" "
\small "~4:00 total"



}


  \hspace #6

\column{
"Begin playing cycle"
"Repeat break 5 times"
}

}
}
\markup{
}







