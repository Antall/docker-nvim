# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]
### Added

### Changed

### Deprecated

### Removed

### Fixed

### Security

## [v1.0.1] - 2019-09-05
### Removed
- Volume mounts from docker compose file

### Fixed
- realpath is not available on MacOS. Added a script to do something similar to what realpath does on \*unix.


## [v1.0.0] - 2019-09-03
### Added
- Added this CHANGELOG.md file.
- Added FZF_DEFAULT_COMMAND environment variable.
- Added mappings
  - escape sequence
  - save file
  - close current buffer
  - swap between buffers
  - disable arrow keys
- Added volume to docker-compose file
