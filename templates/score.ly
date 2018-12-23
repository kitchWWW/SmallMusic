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
  ragged-last = ##f
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
         "For Soloist and Live Electronics" }
tagline = \markup{\center-column{
	"  "
	"  "
	\italic{"A fresh score should be generated for every performance at"} 	"www.brianellissound.com/smallMusic"}}


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


\score{
\header{
tagline=""
piece = ""
}
\midi {}
\layout{}

%part1


}


\markup{
\line{
  \hspace #30

\column{
\huge "Performance Instructions:"
"  "
}


  \hspace #6

\small \column{
"Repeat the cycle a total of seven times."
"* indicates to advance the program via"
\line{\hspace #4 "either the space bar or foot pedal."}
 "Advance the program at the first * only during"
\line{\hspace #4 "the second and sixth time playing."}
"Advance the program at the second * only"
\line{\hspace #4 "on the first, fifth, and seventh times"}
\line{\hspace #4 "playing the cycle."}
"All other * are advanced when first arrived at."

}

}
}
\markup{
}








