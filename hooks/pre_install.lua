local release = require("release")

function PLUGIN:PreInstall(ctx)
    local archive = release.archive(ctx.version)
    return {
        version = ctx.version,
        url = archive.url,
        sha256 = archive.sha256,
    }
end
