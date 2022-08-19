local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"

-- dashboard.section.header.val = { -- larry 3d
--   [[                               __                ]],
--   [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
--   [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
--   [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
--   [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
--   [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
-- }
-- dashboard.section.header.val = { -- speed
--   [[_________________           _____            ]],
--   [[__  __ \_  /__  /_   ___   ____(_)______ ___ ]],
--   [[_  / / /  __/  __/   __ | / /_  /__  __ `__ \]],
--   [[/ /_/ // /_ / /_     __ |/ /_  / _  / / / / /]],
--   [[\____/ \__/ \__/     _____/ /_/  /_/ /_/ /_/ ]],
-- }
-- dashboard.section.header.val = { -- mountains
--   [[]],
--   [[        _    .  ,   .           .]],
--   [[    *  / \_ *  / \_      _  *        *   /\'__        *]],
--   [[      /    \  /    \,   ((        .    _/  /  \  *'.]],
--   [[ .   /\/\  /\/ :' __ \_  `          _^/  ^/    `--.]],
--   [[    /    \/  \  _/  \-'\      *    /.' ^_   \_   .'\  *]],
--   [[  /\  .-   `. \/     \ /==~=-=~=-=-;.  _/ \ -. `_/   \]],
--   [[ /  `-.__ ^   / .-'.--\ =-=~_=-=~=^/  _ `--./ .-'  `-]],
--   [[/        `.  / /       `.~-^=-=~=^=.-'      '-._ `._]],
-- }
-- dashboard.section.header.val = { -- bonsai tree
--   [[       ,.,]],
--   [[      MMMM_    ,..,]],
--   [[        "_ "__"MMMMM          ,...,,]],
--   [[ ,..., __." --"    ,.,     _-"MMMMMMM]],
--   [[MMMM"___ "_._   MMM"_."" _ """"""]],
--   [[ """""    "" , \_.   "_. ."]],
--   [[        ,., _"__ \__./ ."]],
--   [[       MMMMM_"  "_    ./]],
--   [[        ''''      (    )]],
--   [[ ._______________.-'____"---._.]],
--   [[  \                          /]],
--   [[   \________________________/]],
--   [[   (_)                    (_)]],
-- }
dashboard.section.header.val = { -- northern lights
  [[  ` : | | | |:  ||  :     `  :  |  |+|: | : : :|   .        `              .]],
  [[      ` : | :|  ||  |:  :    `  |  | :| : | : |:   |  .                    :]],
  [[         .' ':  ||  |:  |  '       ` || | : | |: : |   .  `           .   :.]],
  [[                `'  ||  |  ' |   *    ` : | | :| |*|  :   :               :|]],
  [[        *    *       `  |  : :  |  .      ` ' :| | :| . : :         *   :.||]],
  [[             .`            | |  |  : .:|       ` | || | : |: |          | ||]],
  [[      '          .         + `  |  :  .: .         '| | : :| :    .   |:| ||]],
  [[         .                 .    ` *|  || :       `    | | :| | :      |:| |]],
  [[ .                .          .        || |.: *          | || : :     :|||]],
  [[        .            .   . *    .   .  ` |||.  +        + '| |||  .  ||`]],
  [[     .             *              .     +:`|!             . ||||  :.||`]],
  [[ +                      .                ..!|*          . | :`||+ |||`]],
  [[     .                         +      : |||`        .| :| | | |.| ||`     .]],
  [[       *     +   '               +  :|| |`     :.+. || || | |:`|| `]],
  [[                            .      .||` .    ..|| | |: '` `| | |`  +]],
  [[  .       +++                      ||        !|!: `       :| |]],
  [[              +         .      .    | .      `|||.:      .||    .      .    `]],
  [[          '                           `|.   .  `:|||   + ||'     `]],
  [[  __    +      *                         `'       `'|.    `:]],
  [[  `---"""----....____,..^---`^``----.,.___          `.    `.  .    ____,.,-]],
  [[    ___,--'""`---"'   ^  ^ ^        ^       """'---,..___ __,..---""']],
  [["'                                 ^                         ``--..,__]],
}
dashboard.section.buttons.val = {
  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
  dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", "  Find Word", ":Telescope live_grep <CR>"),
  dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
  -- dashboard.button("b", "  Shell Config", "e: ~/.zshrc <CR>"),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
  -- NOTE: requires the fortune-mod package to work
  -- local handle = io.popen("fortune")
  -- local fortune = handle:read("*a")
  -- handle:close()
  -- return fortune
  -- return "https://github.com/AlexanderHOtt"
  return [[       /丶     /丶
     ':'  ゛"´    `':
    ﾐ       ・ ω ・   ;
   :; . つ           ,つ
   `:;       __   ,;'
       `´U´'゛  `U´]]
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
