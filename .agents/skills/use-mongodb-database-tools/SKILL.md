---
name: use-mongodb-database-tools
description: Choose and run the MongoDB Database Tools commands supplied by this mise plugin for BSON dumps, data import/export, GridFS files, and database monitoring.
---

# Use MongoDB Database Tools

This plugin installs the official Windows x64 MongoDB Database Tools and adds
their `bin` directory to PATH. Choose the command that matches the user's task:

| Command | Purpose |
| --- | --- |
| `bsondump` | Convert BSON dump files to readable JSON. |
| `mongodump` | Export database contents as a binary dump. |
| `mongorestore` | Restore a binary dump into MongoDB. |
| `mongoexport` | Export collection data as JSON or CSV. |
| `mongoimport` | Import Extended JSON, CSV, or TSV data into a collection. |
| `mongofiles` | List, upload, download, or delete files in GridFS. |
| `mongostat` | Report running MongoDB instance status and activity. |
| `mongotop` | Report time spent reading and writing collection data. |

Use `mongodump` and `mongorestore` for binary dump workflows; use `mongoexport`
and `mongoimport` for data interchange. The plugin does not supply the MongoDB
server or `mongosh` shell.

With mise activated and the tools enabled, run commands directly. Without shell
activation, invoke them through mise:

```powershell
mise exec -- mongodump --version
mise exec -- mongoexport --help
```

Consult the selected command's `--help` for installed-version options. Use the
user's requested connection, database, collection, and file paths when composing
an operation; keep database and GridFS changes within the requested scope.

For plugin setup, see the repository [README](../../../README.md). For command
details, see the [official MongoDB Database Tools documentation](https://www.mongodb.com/docs/database-tools/).
