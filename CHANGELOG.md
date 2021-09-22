# Changelog

All notable changes to this project will be documented in this file.

## 1.1.1 - 2021-09-22

### Added
- A new game mode in which Cow can collect and place bridges
- Two new sound effects to accompany said bridge building
- Press B on title screen for debug mode

### Changed
- Prepared the soundtrack to prevent looping (work in progress)
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