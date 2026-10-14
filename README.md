# mise-mongodb-database-tools-plugin

A Lua tool plugin for mise that installs MongoDB Database Tools from MongoDB's
official Windows x64 ZIP archives.

## Use locally

Run from this repository in PowerShell:

```powershell
mise plugins link mongodb-database-tools .
mise ls-remote mongodb-database-tools
mise install mongodb-database-tools@latest
mise exec mongodb-database-tools@latest -- mongodump --version
```

To enable the tools in another project, run this from that project after linking:

```powershell
mise use mongodb-database-tools@latest
```

The archive's `bin` directory is added to PATH, providing `bsondump`, `mongodump`,
`mongoexport`, `mongofiles`, `mongoimport`, `mongorestore`, `mongostat`, and `mongotop`.

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

After linking the plugin, run:

```powershell
pwsh -NoProfile -File test/smoke.ps1
```
