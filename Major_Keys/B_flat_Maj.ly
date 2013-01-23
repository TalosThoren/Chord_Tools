% Description: Chord tool for the key of B-Flat Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

% Defining variables
% The Key of F Major has two flats:
% B-Flat, E-Flat
b_flat_maj_triads = { \key bes \major <bes d f>1 <c ees g> <d f a> <ees g bes> <f a c> <g bes d> <a c ees> <bes d f> }
b_flat_maj_triadNames = \new ChordNames { \b_flat_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \b_flat_maj_triads 
      \b_flat_maj_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \b_flat_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

