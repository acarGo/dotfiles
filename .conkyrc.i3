out_to_x no
out_to_console yes
short_units yes
update_interval 5 
  
TEXT
     
[\

# MPD

{ "full_text" : "${if_mpd_playing}| ♫ ", "color" : "\#aaaaaa", "separator" : false, "separator_block_width" : 3 },\
{"full_text" : "${mpd_artist 20} - ${mpd_title 30}", "color" : "\#3a71a8", "separator" : false, "separator_block_width" : 3 },\
{ "full_text" : " ♫ ${else}${endif}", "color" : "\#aaaaaa", "separator" : false, "separator_block_width" : 3 },\
# "min_width" : 150 ,

# CPU temperature:

# - Core 1:

{"full_text":"| C1","color":"\#545454","separator":false,"separator_block_width":6},\
{"full_text":"${if_match ${hwmon 0 temp 2}<55}${hwmon 0 temp 2}°C","color":"\#3a71a8","separator":false,"separator_block_width":6},\
{"full_text":"${else}"},\
{"full_text":"${if_match ${hwmon 0 temp 2}<65}${hwmon 0 temp 2}°C","color":"\#b27d12","separator":false,"separator_block_width":6},\
{"full_text":"${else}"},\
{"full_text":"${if_match ${hwmon 0 temp 2}>=65}${hwmon 0 temp 2}°C","color":"\#802828","separator":false,"separator_block_width":6},\
{"full_text":"${else}"},\
{"full_text":"${endif}${endif}${endif}"},\

# - Core 2:

{"full_text":"C2","color":"\#545454","separator":false,"separator_block_width":6},\
{"full_text":"${if_match ${hwmon 0 temp 3}<55}${hwmon 0 temp 3}°C","color":"\#3a71a8","separator":false,"separator_block_width":6},\
{"full_text":"${else}"},\
{"full_text":"${if_match ${hwmon 0 temp 3}<65}${hwmon 0 temp 3}°C","color":"\#b27d12","separator":false,"separator_block_width":6},\
{"full_text":"${else}"},\
{"full_text":"${if_match ${hwmon 0 temp 3}>=65}${hwmon 0 temp 3}°C","color":"\#802828","separator":false,"separator_block_width":6},\
{"full_text":"${else}"},\
{"full_text":"${endif}${endif}${endif}"},\

# Download:

# {"full_text":"DOWN","color":"\#545454","separator":false,"separator_block_width":6},\
# {"full_text":"${if_match ${downspeedf wlo1}<1000}${downspeed wlo1}","color":"\#909737","separator":false,"separator_block_width":6},\
# {"full_text":"${else}"},\
# {"full_text":"${if_match ${downspeedf wlo1}<3000}${downspeed wlo1}","color":"\#b27d12","separator":false,"separator_block_width":6},\
# {"full_text":"${else}"},\
# {"full_text":"${if_match ${downspeedf wlo1}>=3000}${downspeed wlo1}","color":"\#802828","separator":false,"separator_block_width":6},\
# {"full_text":"${endif}${endif}${endif}"},\

# Upload:

# {"full_text":"UP","color":"\#545454","separator":false,"separator_block_width":6},\
# {"full_text":"${if_match ${upspeedf wlo1}<300}${upspeed wlo1}","color":"\#909737","separator":false,"separator_block_width":6},\
# {"full_text":"${else}"},\
# {"full_text":"${if_match ${upspeedf wlo1}<800}${upspeed wlo1}","color":"\#b27d12","separator":false,"separator_block_width":6},\
# {"full_text":"${else}"},\
# {"full_text":"${if_match ${upspeedf wlo1}>=800}${upspeed wlo1}","color":"\#802828","separator":false,"separator_block_width":6},\
# {"full_text":"${endif}${endif}${endif}"},\

# Memory:

{"full_text":"MEM","color":"\#545454","separator":false,"separator_block_width":6},\
{"full_text":"${if_match ${memperc}<30}${memeasyfree}","color":"\#3a71a8","separator":false,"separator_block_width":6},\
{"full_text":"${else}"},\
{"full_text":"${if_match ${memperc}<70}${memeasyfree}","color":"\#b27d12","separator":false,"separator_block_width":6},\
{"full_text":"${else}"},\
{"full_text":"${if_match ${memperc}>=70}${memeasyfree}","color":"\#802828","separator":false,"separator_block_width":6},\
{"full_text":"${endif}${endif}${endif}"},\

# CPU:

{"full_text":"CPU","color":"\#545454","separator":false,"separator_block_width":6},\
{"full_text":"${if_match ${cpu cpu0}<50}${cpu cpu0}%","color":"\#3a71a8","separator":false,"separator_block_width":6},\
{"full_text":"${else}"},\
{"full_text":"${if_match ${cpu cpu0}<60E}${cpu cpu0}%","color":"\#b27d12","separator":false,"separator_block_width":6},\
{"full_text":"${else}"},\
{"full_text":"${if_match ${cpu cpu0}<=100}${cpu cpu0}%","color":"\#802828","separator":false,"separator_block_width":6},\
{"full_text":"${endif}${endif}${endif}"},\

# Weather:

#{"full_text":"☂","color":"\#545454","separator":false,"separator_block_width":6},\
#{"full_text":"${execi 300 ~/.config/i3status/weather.sh 309382}","color":"\#EEEEEE","separator":false,"separator_block_width":6},\

# Mail:

# {"full_text":"MAIL","color":"\#545454","separator":false,"separator_block_width":6},\
# {"full_text":"${if_match ${execpi 60 python ~/bin/gmail.py}<=0}${execpi 60 python ~/bin/gmail.py}","color":"\#909737","separator":false,"separator_block_width":6},\
# {"full_text":"${else}"},\
# {"full_text":"${if_match ${execpi 60 python ~/bin/gmail.py}<2}${execpi 60 python ~/bin/gmail.py}","color":"\#b27d12","separator":false,"separator_block_width":6},\
# {"full_text":"${else}"},\
# {"full_text":"${if_match ${execpi 60 python ~/bin/gmail.py}>2}${execpi 60 python ~/bin/gmail.py}","color":"\#802828","separator":false,"separator_block_width":6},\
# {"full_text":"${endif}${endif}${endif}"},\

# Dropbox

{"full_text":"| DB","color":"\#545454","separator":false,"separator_block_width":6},\
{"full_text":"${execi 6 dropbox status | sed -n 1p}","color":"\#3a71a8","separator":false},\

# WIFI & Ethernet:

{"full_text":"| ${if_existing /proc/net/route wlp16s0}SSID","color":"\#545454","separator":false,"separator_block_width":6},\
{"full_text":"${wireless_essid wlp16s0}","color":"\#3a71a8","separator":false,"separator_block_width":6},\
{"full_text":"${wireless_link_qual wlp16s0}%","color":"\#3a71a8","separator":false,"separator_block_width":6},\
# {"full_text":"IP","color":"\#545454","separator":false,"separator_block_width":6},\
# {"full_text":"${addr wlp16s0}","color":"\#909737","separator":false,"separator_block_width":6},\
{"full_text":"${else}",\ #TODO wifi off and not ethernet
# {"full_text":"IP","color":"\#545454",separator":false,"separator_block_width":6},\
# {"full_text":"${addr enp0s25}","color":"\#909737","separator":false,"separator_block_width":6},\
{"full_text":"E","color":"\#545454",separator":false,"separator_block_width":6},\
{"full_text":"[on]","color":"\#3a71a8","separator":false,"separator_block_width":6},\
{"full_text":"${endif}"},\

# Volume:

{"full_text":"VOL","color":"\#545454","separator":false,"separator_block_width":6},\
{"full_text":"${execi 1 amixer sget Master,0 | egrep -o '([0-9]+%|\[(on|off)\])' | sed ':a;N;$!ba;s/\n/ /g'}","color":"\#3a71a8","separator":false},\

# Battery:

{"full_text":"${if_existing /sys/class/power_supply/C23B/uevent}BAT","color":"\#545454","separator":false,"separator_block_width":6},\
{"full_text":"${if_match ${battery_percent C23B}<30}${battery_percent C23B}% ${battery_time C23B}","color":"\#802828","separator":false,"separator_block_width":6},\
{"full_text":"${else}"},\
{"full_text":"${if_match ${battery_percent C23B}<70}${battery_percent C23B}% ${battery_time C23B}","color":"\#b27d12","separator":false,"separator_block_width":6},\
{"full_text":"${else}"},\
{"full_text":"${if_match ${battery_percent C23B}>=70}${battery_percent C23B}% ${battery_time C23B}","color":"\#3a71a8","separator":false,"separator_block_width":6},\
{"full_text":"${endif}${endif}${endif}${endif}"},\

# Date:

{"full_text":"|","color":"\#545454","separator":false,"separator_block_width":6},\
{"full_text":"${time %d/%m/%y}","color":"\#aaaaaa","separator":false,"separator_block_width":6},\

# Time:

{"full_text":"|","color":"\#545454","separator":false,"separator_block_width":6},\
{"full_text":"${time %H:%M}","color":"\#aaaaaa","separator":false}\
],
