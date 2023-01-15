local status_ok, exrc = pcall(require, "exrc")
if not status_ok then
  return
end

exrc.setup({
  files = {
    ".nvimrc.lua",
    ".nvimrc",
    ".exrc.lua",
    ".exrc",
  }
})
