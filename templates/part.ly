


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

%part


\break
\revert Score.BarLine.stencil
\bar":|."
\set Score.repeatCommands = #'((volta "5"))
fis''4
\override Score.BarLine.stencil = ##f 
g''4 g'' g'' g''
\set Score.repeatCommands = #'((volta #f))
g'' g'' g'' g'' g''  ^\markup{\magnify #2 "*" }   g'' g'' g'' g'' g'' 

 \revert Score.BarLine.stencil
\bar ":|."
 \set Score.repeatCommands = #'((volta "7"))

fis''4 
 \override Score.BarLine.stencil = ##f 
g'' 
s4
s4^\markup{\magnify #2 "*" }
s4
s4^\markup{\magnify #2 "*" }
\set Score.repeatCommands = #'((volta #f))

 \revert Score.BarLine.stencil
\bar "|."

}

