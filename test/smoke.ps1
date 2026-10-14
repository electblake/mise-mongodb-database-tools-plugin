param([string]$Version = '100.19.1')

$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $true

mise install "mongodb-database-tools@$Version"
foreach ($binary in @('bsondump', 'mongodump', 'mongoexport', 'mongofiles', 'mongoimport', 'mongorestore', 'mongostat', 'mongotop')) {
    mise exec "mongodb-database-tools@$Version" -- $binary --version
}
