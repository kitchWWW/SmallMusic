%#(set-global-staff-size 10)

\header{
	tagline = "" 
	title = "Interval Music"
	subtitle="#
1516905254
"
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
  print-all-headers = ##t
  print-page-number = ##f
}

\score{
\header{
	tagline = "" 
	title = "  "
	subtitle="  "
}
 \new  StaffGroup  <<

\new Staff \with {
    instrumentName = #"
Ukulele
"
	midiInstrument = "Acoustic Guitar (nylon)"
  }
\absolute {
\numericTimeSignature

\clef
"treble"

g'4 

	\bar "|."

}


>>
\layout{}
\midi{}
}

