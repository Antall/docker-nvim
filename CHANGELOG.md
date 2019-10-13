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

## [v1.0.10] - 2019-10-13
### Added
- support for plantuml files


## [v1.0.9] - 2019-10-12
### Added
- LanguageClient for Neovim

### Security
- introduced `neovim` user to run neovim
- no longer running neovim under root privs


## [v1.0.8] - 2019-09-27
### Added
- LanguagueClient server
- ruby and node to support neovim setup


## [v1.0.7] - 2019-09-25
### Changed
- set `TARGET` in entrypoint.sh

## [v1.0.6] - 2019-09-23
### Changed
- settings
  - highlight current cursor line
  - wrap lines


## [v1.0.5] - 2019-09-17
### Added
- set NVIM_TUI_ENABLE_TRUE_COLOR


## [v1.0.4] - 2019-09-16
### Added
- install openssh-client for fugitive

### Changed
- mount .ssh directory as RO volume


## [v1.0.3] - 2019-09-16
### Added
- Theme: vim-airline and vim-airline-themes
- support for abbreviations


## [v1.0.2] - 2019-09-14
### Added
- Plugin: NerdCommenter
- Plugin: Vim-Surround
- Plugin: Auto-Ctags
- Plugin: Theme - Base16-Vim

- Plugin: Fugitive
  - <leader>gs mapping for `git status`
  - <leader>gc mapping for `git commit`
  - <leader>gw mapping for `git add`
  - <leader>gd mapping for `git diff`

- Plugin: Tagbar
  - <leader>tt mapping for tagbar

- Mappings for NERDTree
  - <leader>nn mapping to toggle NERDTree
  - <leader>nf mapping to find file in NERDTree

- Git configuration

### Changed
- ensure Neovim does not open the first file in working directory.
- reorganize the `settings.vim` file.
- do not open NERDTree on launching Neovim.
- updated the README.


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
