


\new Voice \with {
  \remove "Forbid_line_break_engraver"
}




\absolute {
\override Score.BarNumber.break-visibility = ##(#f #f #f)

%key
%clef

 \once \hide Staff.TimeSignature 
 \override Score.BarLine.stencil = ##f 
   \override Score.BarNumber.break-visibility = ##(#f #f #f) 
	\time 1/4

%part

}

