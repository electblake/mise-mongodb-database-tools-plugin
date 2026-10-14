local file = require("file")

function PLUGIN:EnvKeys(ctx)
    return {
        { key = "PATH", value = file.join_path(ctx.path, "bin") },
    }
end
