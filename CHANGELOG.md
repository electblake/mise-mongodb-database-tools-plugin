# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Added a mise plugin for MongoDB Database Tools on Windows x64 using MongoDB's official release manifest and SHA-256-verified ZIP archives.
- Added PATH configuration for all eight Database Tools executables.
- Added local installation documentation and a PowerShell smoke test for all eight tools.
- Added ignore rules for local mise configuration, runtime caches, build and test artifacts, environment secrets, and editor files.
- Added a shareable `use-mongodb-database-tools` skill with a brief command reference and mise invocation examples.

### Changed

- Replaced local plugin linking instructions with GitHub installation, global activation, project version pinning, and executable usage examples.
