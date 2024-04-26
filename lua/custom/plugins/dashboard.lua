return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    local logo = [[
      9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP',
       9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP',
        `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'",
          `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'",
              ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~',
                              )b.  .dbo.dP'`v'`9b.odb.  .dX(",
                            ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.',
                           dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb",
                          dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb',
                          9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP",
                           `'      9XXXXXX(   )XXXXXXP      `'",
                                    XXXX X.`v'.X XXXX",
                                    XP^X'`b   d'`X^XX",
                                    X. 9  `   '  P )X",
    ]]

    --     local logo = [[
    -- __/\\\\\_____/\\\_        __/\\\\\\\\\\\_        _______/\\\\\______        __/\\\\\_____/\\\_
    --  _\/\\\\\\___\/\\\_        _\/////\\\///__        _____/\\\///\\\____        _\/\\\\\\___\/\\\_
    --   _\/\\\/\\\__\/\\\_        _____\/\\\_____        ___/\\\/__\///\\\__        _\/\\\/\\\__\/\\\_
    --    _\/\\\//\\\_\/\\\_        _____\/\\\_____        __/\\\______\//\\\_        _\/\\\//\\\_\/\\\_
    --     _\/\\\\//\\\\/\\\_        _____\/\\\_____        _\/\\\_______\/\\\_        _\/\\\\//\\\\/\\\_
    --      _\/\\\_\//\\\/\\\_        _____\/\\\_____        _\//\\\______/\\\__        _\/\\\_\//\\\/\\\_
    --       _\/\\\__\//\\\\\\_        _____\/\\\_____        __\///\\\__/\\\____        _\/\\\__\//\\\\\\_
    --        _\/\\\___\//\\\\\_        __/\\\\\\\\\\\_        ____\///\\\\\/_____        _\/\\\___\//\\\\\_
    --         _\///_____\/////__        _\///////////__        ______\/////_______        _\///_____\/////__
    --     ]]

    dashboard.section.header.val = vim.split(logo, '\n')
    dashboard.section.footer.val = ' Muktadirul Islam'

    dashboard.section.buttons.val = {
      dashboard.button('f', ' ' .. ' Find file', '<cmd> Telescope find_files <cr>'),
      dashboard.button('n', ' ' .. ' New file', '<cmd> ene <BAR> startinsert <cr>'),
      dashboard.button('r', ' ' .. ' Recent files', '<cmd> Telescope oldfiles <cr>'),
      -- dashboard.button('s', ' ' .. ' Restore Session', [[<cmd> lua require("persistence").load() <cr>]]),
      dashboard.button('q', ' ' .. ' Quit', '<cmd> qa <cr>'),
    }

    alpha.setup(dashboard.opts)

    vim.keymap.set('n', '<leader>at', ':Alpha<CR>', { desc = 'Toggle Alpha' })
  end,
}
