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
	\italic{"A fresh score should be generated for every performance at"} 	"www.<theComposer'sWebsite>.com/smallMusic"}}


composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Composer's Name" }
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




\new Voice \with {
  \remove "Forbid_line_break_engraver"
}




\absolute {
\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\key d \major
 \once \hide Staff.TimeSignature 
 \override Score.BarLine.stencil = ##f 
   \override Score.BarNumber.break-visibility = ##(#f #f #f) 
	\time 1/4

\key d \major cis''4 ^\markup{ \column{ \small "2, 6" 
\magnify #2 "*" }   } d''4 a''4 g''4 d''4 cis''4 a''4 b''4 d''4 e''4 ^\markup{ \column{ \small "1, 5, 7" 
\magnify #2 "*" }   } a'4 g'4 fis''4 g''4 g'4 a'4 g''4 fis''4 
\break
 b'4 cis''4 b''4 a''4 b'4 a'4 e''4 d''4 g''4 a''4 a'4 b'4 fis''4 e''4 cis''4 b'4 e''4 
\set Score.repeatCommands = #'((volta "1-4, 6"))
 fis''4  \set Score.repeatCommands = #'((volta #f)) 
\revert Score.BarLine.stencil
\bar ":|." 

}




}


\score{
\header{
tagline=""
piece = ""
}
\midi {}
\layout{}




\new Voice \with {
  \remove "Forbid_line_break_engraver"
}




\absolute {
\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\key d \major
 \once \hide Staff.TimeSignature 
 \override Score.BarLine.stencil = ##f 
   \override Score.BarNumber.break-visibility = ##(#f #f #f) 
	\time 1/4

\revert Score.BarLine.stencil 
\bar":|."
 \set Score.repeatCommands = #'((volta "5")) 
fis''4 \override Score.BarLine.stencil = ##f 
g''4 g'' g'' g'' 
 \set Score.repeatCommands = #'((volta #f)) 
 g''  g''4 ^\markup{\magnify #2 "*" } g''4 g''4 g''4 g''4 g''4  g'' g'' g'' 
 \revert Score.BarLine.stencil
\bar ":|." 
\set Score.repeatCommands = #'((volta "7")) 
fis''4 \override Score.BarLine.stencil = ##f 
g'' s4 s4^\markup{\magnify #2 "*" } s4 s4^\markup{\magnify #2 "*" } 
 \set Score.repeatCommands = #'((volta #f)) 
\revert Score.BarLine.stencil
\bar "|." 

}




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









