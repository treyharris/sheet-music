\version "2.20.0"
\pointAndClickOff
\header {
    encodingsoftware =  "3.0.0"
    arranger =  "@treyethan"
    composer =  "Trey Harris"
    }
PartPOneVoiceOne =  \relative c {
    \transposition c' \clef "bass" \stopStaff \override
    Staff.StaffSymbol.line-count = #5 \startStaff \key a \minor \time
    6/8 | % 1
    c8 [ d8 e8 ~ ] _\markup{ \italic {Do} } _\markup{ \italic {this.} }
    e8 [ f8 c8 ] | % 2
    c8 [ d8 ] _\markup{ \italic {Don’t} } _\markup{ \italic {do} }
    _\markup{ \italic {this.} } e4 f8 [ c8 ] | % 3
    c2. _\markup{ \italic {This} } _\markup{ \italic {is fine.} } | % 4
    e2. ~ _\markup{ \italic {So is} } _\markup{
        \italic {this.} } | % 5
    e4 c2 ~ _\markup{ \italic {Or} } _\markup{
        \italic {this.} } | % 6
    c2. }
% The score definition
\score {
    <<
        
        \new Staff
        <<
            \set Staff.instrumentName = "Cellos"
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    }

