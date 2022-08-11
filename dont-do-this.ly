% One measure in 6/8 time, labeled “Do this.” Has tied eighth notes
% spanning beats 3-4.
% Lilypond 2.20.0
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
    e8 [ f8 c8 ] | }
% Score definition
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
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 100 }
    }