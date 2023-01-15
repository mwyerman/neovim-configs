return {
  "danymat/neogen",
  config = {
    enabled = true,
    input_after_comment = true,
    languages = {
      python = {
        template = {
          annotation_convention = "numpydoc",
        }
      }
    },
  }
}
