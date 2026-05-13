return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        header = {
          [[                                    ██████                                    ]],
          [[                                ████▒▒▒▒▒▒████                                ]],
          [[                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                              ]],
          [[                            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            ]],
          [[                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                              ]],
          [[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                          ]],
          [[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                          ]],
          [[                        ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        ]],
          [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
          [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
          [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
          [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
          [[                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        ]],
          [[                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        ]],
          [[                        ██      ██      ████      ████                        ]],
          [[                                                                              ]],
        },
        shortcut = {
          {
            desc = 'Update',
            group = '@property',
            action = 'Lazy update',
            key = 'u'
          },
          {
            desc = 'copilot',
            group = '@property',
            action = 'e .github/copilot-instructions.md',
            key = 'c',
          },
          {
            desc = 'dotfiles',
            group = '@property',
            action = 'e ~/.dotfiles/',
            key = 'd',
          },
          {
            desc = 'nvim',
            group = '@property',
            action = 'e ~/.config/nvim',
            key = 'n',
          },
        },
      }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'} }
}
