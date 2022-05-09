local ok, yabs = pcall(require, "yabs")

if not ok then
  return
end

local ok, cond = pcall(require, "yabs.conditions")

if not ok then
  return
end

yabs:setup({
  languages = { -- List of languages in vim's `filetype` format
    lua = {
      tasks = {
        run = {
          command = 'luafile %', -- The command to run (% and other wildcards will be automatically expanded)
          type = 'vim',  -- The type of command (can be `vim`, `lua`, or `shell`, default `shell`)
        },
      },
    },
    c = {
      default_task = 'make',
    },
  },
  tasks = { -- Same values as `language.tasks`, but global
    make = {
      command = 'make',
      output = 'quickfix',
      condition = cond.file_exists('Makefile'),
    },
    ["make clean"] = {
      command = 'make clean',
      output = 'quickfix',
      condition = cond.file_exists('Makefile'),
    },
    ["make test"] = {
      command = 'make test',
      output = 'quickfix',
      condition = cond.file_exists('Makefile'),
    },
    ceedling = {
      command = 'ceedling',
      output = 'quickfix',
      condition = cond.file_exists('project.yml'),
    }
  },
  opts = { -- Same values as `language.opts`
    output_types = {
      quickfix = {
        open_on_run = 'always',
      },
    },
  },
})


local ok, telescope = pcall(require, "telescope")

if not ok then
  return
end

telescope.load_extension('yabs')
