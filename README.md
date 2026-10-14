# MongoDB Database Tools plugin for mise

A Lua tool plugin for mise that installs MongoDB Database Tools from MongoDB's
official Windows x64 ZIP archives.
Verified with mise 2026.10.9; no separate Lua installation is needed.

## Installation

Install the plugin from GitHub, then enable the tools globally:

```powershell
mise plugins install mongodb-database-tools https://github.com/electblake/mise-mongodb-database-tools-plugin.git
mise use --global mongodb-database-tools@latest
mise exec -- mongodump --version
```

For a project-specific version, run this from the consuming project instead of
the global activation command:

```powershell
mise use --pin mongodb-database-tools@latest
```

The archive's `bin` directory is added to PATH, providing `bsondump`, `mongodump`,
`mongoexport`, `mongofiles`, `mongoimport`, `mongorestore`, `mongostat`, and `mongotop`.
With mise activated in your shell, run these commands directly, such as
`mongodump --help`. Otherwise, use `mise exec -- mongodump --help`.

## Installation behavior

Versions, archive URLs, and SHA-256 checksums come from the
[MongoDB release manifest](https://downloads.mongodb.org/tools/db/release.json).
This manifest currently lists only the current release (100.19.1 when tested);
the plugin lists and installs the versions present in that manifest.
mise downloads, verifies, and extracts the selected archive. The plugin supports
Windows x64 only. It has no fallback downloads or custom recovery paths.

MongoDB hosts these binaries on its download service rather than GitHub Releases,
so this plugin uses the official manifest directly.

See MongoDB's [installation documentation](https://www.mongodb.com/docs/database-tools/installation/?operating-system=windows&package-type=zip)
and mise's [tool plugin documentation](https://mise.jdx.dev/tool-plugin-development.html).

## Smoke test

From a checkout of this repository, after installing the plugin, run:

```powershell
pwsh -NoProfile -File test/smoke.ps1
```
