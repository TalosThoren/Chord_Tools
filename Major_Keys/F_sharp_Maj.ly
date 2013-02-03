% Description: Chord tool for the key of F-Sharp Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of F-Sharp Major"
}

% Variable for F-Sharp Major chord tool

% Key of F-Sharp Major has six sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp, A-Sharp, E-Sharp 
f_sharp_maj_triads = { \key fis \major <fis ais cis>1 <gis b dis> <ais cis eis> <b dis fis> <cis eis gis> <dis fis ais> <eis gis b> <fis ais cis> }
f_sharp_maj_triadNames = \new ChordNames { \f_sharp_maj_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c'
{
  <<
    \f_sharp_maj_triads
    \f_sharp_maj_triadNames
  >>
}

chordTool = \new StaffGroup
{
  <<

    \new Staff
    {
      \relative c
      << 
	\f_sharp_maj_triads 
	%\f_sharp_maj_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c,
    {
      \clef bass
      <<
	\f_sharp_maj_triads
      >>

    }
  >>
}

\score
{
  \chordTool
}

