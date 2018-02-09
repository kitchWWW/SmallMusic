%#(set-global-staff-size 10)

\header{
	tagline = "" 
	title = "Interval Music"
	subtitle="#
1516906948
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

\key d \major g''4 a''4 e''4 d''4 a''4 b''4 cis''4 b'4 fis''4 g''4 d''4 cis''4 e''4 fis''4 b'4 a'4 d''4 e''4 a''4 g''4 b'4 cis''4 g''4 fis''4 a'4 b'4 fis''4 e''4 g'4 a'4 b''4 a''4 cis''4 d''4 a'4 g'4 

	\bar "|."

}


>>
\layout{}
\midi{}
}

