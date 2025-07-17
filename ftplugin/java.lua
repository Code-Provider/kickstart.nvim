local config = {
  cmd = { vim.fn.expand '~/.local/share/nvim/mason/bin/jdtls' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}

config.settings = {
  java = {
    format = {
      enabled = false,
      --settings = {
      --  url = 'https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml',
      --  profile = 'GoogleStyle',
      --},
    },
  },
}

require('jdtls').start_or_attach(config)
