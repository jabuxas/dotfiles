Config { font = "xft:Ubuntu Mono:pixelsize=16:antialiasing=true:hinting=true"
       , additionalFonts = [ "xft:Mononoki Nerd Font:pixelsize=16:antialias=true:hinting=true"
					  	   , "xft:Font Awesome 6 Brands:pixelsize=18"
						   , "xft:Font Awesome 6 Free:pixelsize=18"
						   ]
       , borderColor = "black"
       , border = TopB
       , bgColor = "#2e3440"
       , fgColor = "#d8dee9"
       , alpha = 255
       , position = Top
       , textOffset = -1
       , iconOffset = -1
       , lowerOnStart = True
       , pickBroadest = False
       , persistent = True
       , hideOnStart = False
       , iconRoot = "."
       , allDesktops = True
       , overrideRedirect = True
       , commands = [ Run Network "enp2s0" ["-t", "<fn=1>\xf0aa</fn> <rx>kb <fn=1>\xf0ab</fn> <tx>kb"] 20
                    , Run Cpu ["-t", "<fn=1>\xf108</fn>  cpu: (<total>%)","-H","50","--high","red"] 10
                    , Run Memory ["-t", "<fn=1>\xf233</fn>  mem: <used>M (<usedratio>%)"] 10
--                    , Run Swap [] 10
                    , Run Com "echo" ["<fn=1>\xf17c</fn>"] "penguin" 3600
					, Run Com ".local/bin/kernel" [] "kernel" 36000
                    , Run Date "<fn=1>\xf133</fn> %d %b %Y - (%H:%M) " "date" 50
					, Run DiskU [("/", "<fn=2>\xf0c7</fn>  hdd: <free> free")] [] 60
					, Run Uptime ["-t", "uptime: <days>d <hours>h"] 360
					, Run Com ".config/xmobar/trayer-padding-icon.sh" [] "trayerpad" 20
					, Run UnsafeStdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "<fc=#666666>|</fc> %UnsafeStdinReader%}\
                    \{ <fc=#8FBCBB>%penguin%  %kernel%</fc>| %cpu% | %memory% | %enp2s0% | <fc=#46d9ff> %date% </fc>| %trayerpad% ) "
       }
