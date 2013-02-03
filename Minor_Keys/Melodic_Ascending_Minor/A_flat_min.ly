% Description: Chord tool for the key of A Flat minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of A-Flat minor"
}

% Defining variables
% The Key of A Flat minor has seven flats:
% B-Flat, E-Flat, A-Flat, D-Flat, G-Flat, C-Flat, F-Flat (All notes are flat)
a_flat_min_triads = { \key aes \minor <aes ces ees>1  <bes des f> <ces ees g> <des f aes> <ees g bes> <f aes ces> <g bes des> <aes ces ees> }
a_flat_min_triadNames = \new ChordNames { \a_flat_min_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c''
{
  <<
    \a_flat_min_triads
    \a_flat_min_triadNames
  >>
}

% Main variable
chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c'
      << 
	\a_flat_min_triads 
	%\a_flat_min_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c
    {
      \clef bass
      <<
	\a_flat_min_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

