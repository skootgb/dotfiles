require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'poimandres',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
} 
