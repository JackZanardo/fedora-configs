local oil = require("oil")

oil.setup({
  -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
  -- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories.
  default_file_explorer = true,
  -- Id is automatically added at the beginning, and name at the end
  -- See :help oil-columns
  columns = {
    "permissions",
    "size",
    "mtime",
  },
  -- Send deleted files to the trash instead of permanently deleting them (:help oil-trash)
  delete_to_trash = true,
})


