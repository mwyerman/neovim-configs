local ok, githubtheme = pcall(require, 'github-theme')
if not ok then
  return
end

githubtheme.setup({
  -- theme_style = "dark_default",
  theme_style = "dark",
})
