local release = require("release")

function PLUGIN:Available(ctx)
    local versions = {}
    for _, entry in ipairs(release.versions()) do
        table.insert(versions, { version = entry.version })
    end
    return versions
end
