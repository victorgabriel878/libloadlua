-- Define the libloadlua module table
libloadlua = {}

function libloadlua.load_directory(directory)
    local modpath = minetest.get_modpath(minetest.get_current_modname())
    local full_directory = modpath .. "/" .. directory
    local files = minetest.get_dir_list(full_directory, false)

    for _, file in ipairs(files) do
        -- Check if the file ends with ".lua"
        if file:sub(-4) == ".lua" then
            local filepath = full_directory .. "/" .. file
            dofile(filepath) -- Load the Lua file
        end
    end
end

-- Export the libloadlua module table for external use
return libloadlua

