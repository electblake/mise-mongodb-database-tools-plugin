local http = require("http")
local json = require("json")

local M = {}

function M.versions()
    local response = http.get({
        url = "https://downloads.mongodb.org/tools/db/release.json",
    })
    return json.decode(response.body).versions
end

function M.archive(version)
    local platforms = { windows = { amd64 = "windows/x86_64" } }
    local platform = platforms[RUNTIME.osType][RUNTIME.archType]
    local archives = {}
    for _, release in ipairs(M.versions()) do
        if release.version == version then
            for _, download in ipairs(release.downloads) do
                archives[download.name .. "/" .. download.arch] = download.archive
            end
        end
    end
    return archives[platform]
end

return M
