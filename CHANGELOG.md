# Changelog

All notable changes to this project will be documented in this file.

## 1.3 - 2021-11-02

### Added
- Fall aesthetics
- Five new fall levels
- Summer and Fall interstital screens

### Changed
- Aesthetics across the first twenty demo levels
- GG screen: end of demo message
- Readme text, as there are 25 instead of 20 levels now
- Start screen: added demo and NESmaker message

### Removed
- Menu option on start screen (on behalf of demo)


## 1.2.2 - 2021-10-31

### Added
- Season mode menu

### Changed
- Moved around some levels to accompany season mode
- Updated graphics on menu screens
- Updated the readme to reflect the seasonal changes
- Added subroutines to reuse input scripts (and save bytes in the static bank)

## 1.2 - 2021-10-31

### Added
- Selection screen for story mode or season mode
- Placeholders for story mode
- Placeholder for season select
- Interstital soundtrack

### Changed
- Some minor graphical fixes


## 1.1.3 - 2021-09-22

### Added
- A new game mode in which Cow can collect and place bridges
- Two new sound effects to accompany said bridge building
- Press B on title screen for debug mode
- Graphical aesthetics

### Changed
- Prevent looping on start and end screen
- Fixed a visual pattern bug
- Reset the bridge flag on (re)loading a level

### Removed
- Gutted base scripts to remove stuff I don't need, to free some
  space from the static bank.


## 1.0.2 - 2021-01-21

### Added
- The soundtrack has been extended with a winter theme song.

### Changed
- Fixed an off note in the main soundtrack.

## 1.0.1 - 2020-12-16

### Added
- A README.md file

### Changed
- Fixed multiple input bugs which caused the cow to glitch out upon
  spamming buttons during and between levels.
- Updated the .nes ROM file

### Removed
-  Removed StopMusic from the win condition, so the Moo sound effect
   doesn't stop and restart the music.

## 1.0.0 - 2020-12-15

### Added
- The project file, containing the demo game with 20 levels.
- All source code in Assembly.
- All graphic assets as bitmap files.
- The compiled .nes ROM file.
- The original soundtrack in Famitracker and TXT format.
- This changelog file.