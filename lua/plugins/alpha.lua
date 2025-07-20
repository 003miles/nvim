local alpha = require('alpha')
local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
    [[                                                                                                                ]],
    [[                                               ..,.oooE777999V(;                                                ]],
    [[                                  ...oooP779090(;''       ''''  I                                               ]],
    [[                    ...ooB777979V;;''       .....=v}}=}=}=}}v==  5                                              ]],
    [[               97?(;''     .........< .    . .:.:.:.:.`:;``;;;;;;;;<;;;<;<<<<<<<<<<                             ]],
    [[                 b ;           . : .:.:.:.`;;;;;;;;;;;<;;<;<<<<<<<<, I                                          ]],
    [[                 `,`               . : :.:.:.:.`.`;;;;;;;;;;;;<;<;<<. 5                                         ]],
    [[                  b ;                    . : .:.:.:.`;;;;;;;;;;;<;<;<: E                                        ]],
    [[                  `,<                         . . .:.:.:.``;;;;;;;;;;. I                                        ]],
    [[                   b :                             . . :.:.:.:.:.:.;;;. 5                                       ]],
    [[                   `>;                                  . .:..:.:.:.`.:  |                                      ]],
    [[                    b :                                      . . :.:.:.x T                                      ]],
    [[                    `,;                                          . . .::  E                                     ]],
    [[                     b :                                               _  !4                                    ]],
    [[                     `r :                                   __.__,--,;'))))).                                   ]],
    [[                      b :                         ___...--'; `))))))))' '' `>!9eOc                              ]],
    [[                      `r :              __,--:-;;;)))))))))))'' '' ' ' _. -'-'.`!9Eg.                           ]],
    [[                       L : . __.--_--:,)))))))))))'' ' '  _. ._.-'-'-'-'\-'\---\/\ ``Qu.                        ]],
    [[                       `,: !x;:)))))))) ')'' ' _ _._-.''\_\_-'''-'_'\-''\ -_'-\-. 95n.                          ]],
    [[                        D` ))))'''  _ .___.-_:/-/\/-_\ /-_, /-,\ \-/_\/\,-\_/-\/-/--' ..v<]9o.                  ]],
    [[                      __b :<> -_\._/\,- ,_ -\ _/\-\ _-\ -_/-\,\/,-/\_/-_'\--' .vvvvvvv}v}}x}]NEo.               ]],
    [[                .ooPO%LOCu  `< `/\_ -:\/_/-/,\/,/-,/_,-/\ :_\:_-:__-'' ...vvvvvvvvvvvvxx}vx}}}}==No             ]],
    [[              .oPO'       `y. `< ~-\ _\/\_,- \ , - ,___..--' .......>>vvvvvvvvx>vvvvvvvvvv)v~~~`         iuuuaE']],
    [[  .@tTL'                        `y,  `< .-vvv<<<<<<<<vvvvv=>~~~~`         _uuua'''                              ]],
    [[.&P'                              `L,  `>>><<<<><>v~>^` `        _uuug'                                         ]],
    [[                                      `L,  ~~`          _uuua''                                                 ]],
    [[                                        `L,:    _uuua''                                                         ]],
    [[                                                                                                                ]],
}

dashboard.section.buttons.val = {
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "󰍉  Find file", ":lua require('fzf-lua').files() <CR>"),
	dashboard.button("t", "  Browse cwd", ":NvimTreeOpen<CR>"),
	-- dashboard.button("r", "  Browse src", ":e ~/.local/src/<CR>"),
	-- dashboard.button("s", "󰯂  Browse scripts", ":e ~/scripts/<CR>"),
	dashboard.button("c", "  Config", ":e ~/.config/nvim/<CR>"),
	dashboard.button("m", "  Mappings", ":e ~/.config/nvim/lua/config/mappings.lua<CR>"),
	dashboard.button("p", "  Plugins", ":PlugInstall<CR>"),
	dashboard.button("q", "󰅙  Quit", ":q!<CR>"),
}

dashboard.section.footer.val = function()
  return vim.g.startup_time_ms or "[[  ]]"
end

dashboard.section.buttons.opts.hl = "Keyword"
dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
