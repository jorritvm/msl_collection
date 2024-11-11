on *:load: {
  //echo -a 4 -
  //echo -a 4 This is a Winamp Script, it show's your stats and let's you adjust winamp from mIRC
  //echo -a 4 Works toghether with wa_link.dll & swamp.dll
  //echo -a 4 Grtz, jayke
  //echo -a 4 -
  ampcmds
}
on *:unload: { unset %mp3* | unset %amp* }
menu channel,query,status {
  -  
  AMP INFO:amp
  Amp Control Center:dialog -m ampctrl ampctrl
  Amp Configurator:ampcfg
}
;Ampstuff Dialog
alias ampcfg { dialog -m ampcfg ampcfg }

dialog ampcfg {
  title "Amp Config"
  size -1 -1 245 320
  box "Usable Tags", 1, 5 5 235 80
  text "artist", 2, 15 20 70 15
  text "title", 3, 15 40 70 15
  text "bitrate", 4, 15 60 70 15
  text "year", 5, 80 20 70 15
  text "genre", 6, 80 40 70 15
  text "album", 7, 80 60 70 15
  text "sample", 8, 145 20  70 15
  text "mode", 9, 145 40 70 15
  text "trackfilename", 22, 145 60 80 15

  box "Styles", 10, 5 90 235 90
  text "", 21, 15 104 200 15
  combo 11, 15 120 220 110, drop
  button "NEW", 12, 15 150 40 20
  button "DELETE", 13, 70 150 50 20 
  button "SAMPLE", 14, 135 150 50 20

  box "Others", 20, 5 185 235 80
  button "List Aliasses", 17, 15 208 120 20
  button "Winamp Control Center", 16, 15 238 150 20

  button "Save/Quit", 18, 15 280 100 20, ok
  button "Cancel", 19, 120 280 100 20, cancel
}
on *:dialog:ampcfg:sclick:12: { 
  write ampstyles.jay $?="Name New Style?" $+ ; $+ $?="Enter New Style:"
  set %ampline $read($mircdir\ampstyles.jay, $lines(ampstyles.jay)) | did -i $dname 11 %styles %styles $gettok(%ampline,1,59)
  did -a $dname 21 There are $lines(ampstyles.jay) styles found.
}

on *:dialog:ampcfg:sclick:14 {
  echo 12 -a Sample $gettok($did(11),2,32) $+ :1 $gettok($read(ampstyles.jay,$gettok($did(11),1,32)),2,59)
}
on *:dialog:ampcfg:sclick:13 {
  set %ampdelline $gettok($did(11),1,32) 
  did -d $dname 11 %ampdelline
  write -dl $+ %ampdelline ampstyles.jay 

}
on *:dialog:ampcfg:sclick:16 { dialog -m ampctrl ampctrl }

on *:dialog:ampcfg:sclick:17: { ampcmds }
alias ampcmds { 
  echo 4 -a /amp
  echo 4 -a /amp -i  [INVISIBLE]
  echo 4 -a /ampplay
  echo 4 -a /amppause
  echo 4 -a /ampnext
  echo 4 -a /ampprevious
  echo 4 -a /ampstop
  echo 4 -a /ampquit
  echo 4 -a Dialogs can be accessed from popup's or with the /ampcfg cmd.
}
on *:dialog:ampcfg:init:0 {
  set %styles 1
  while (%styles != $calc($lines($mircdir\ampstyles.jay) + 1)) { set %ampline $read($mircdir\ampstyles.jay, %styles) | did -i $dname 11 %styles %styles $gettok(%ampline,1,59) | set %styles $calc(%styles + 1) }
  did -a $dname 21 There are $lines(ampstyles.jay) styles found.
  did -c $dname 11 %ampactiveline
  did -f $dname 18
}
on *:dialog:ampcfg:sclick:18 {
  set %ampactiveline $gettok($did(11),1,32)
  set %ampactive $gettok($read(ampstyles.jay,%ampactiveline),2,59)
}
;ampcontrol deel
dialog ampctrl {
  title "Control"
  size 200 200 100 100
  button "PLAY", 1, 0 0 50 18
  button "PAUSE", 2,50 0 50 18
  button "PREV.", 3, 0 20 50 18
  button "NEXT", 4, 50 20 50 18
  button "STOP", 5, 0 40 50 18
  button "STATS", 11, 50 40 50 18
  button "VOL +", 6, 0 60 50 18
  button "VOL -", 7, 50 60 50 18
  button "RUN WA", 8, 0 80 50 18
  button "CLOSE", 9, 50 80 50 18
}
on *:dialog:ampctrl:*:*:{
  if (($devent == sclick) && ($did == 1)) { ampplay }
  if (($devent == sclick) && ($did == 2)) { amppause }
  if (($devent == sclick) && ($did == 3)) { ampprevious }
  if (($devent == sclick) && ($did == 4)) { ampnext }
  if (($devent == sclick) && ($did == 5)) { ampstop }
  if (($devent == sclick) && ($did == 6)) { dll wa_link.dll WA_Link_Command VOL UP }
  if (($devent == sclick) && ($did == 7)) { dll wa_link.dll WA_Link_Command VOL DOWN }
  if (($devent == sclick) && ($did == 8)) { dll wa_link.dll WA_Link_Command START }
  if (($devent == sclick) && ($did == 9)) { ampquit }
  if (($devent == sclick) && ($did == 11)) { amp }
}
alias ampplay { dll wa_link.dll WA_Link_Command PLAY }
alias amppause { dll wa_link.dll WA_Link_Command PAUSE }
alias ampstop { dll wa_link.dll WA_Link_Command STOP }
alias ampnext { dll wa_link.dll WA_Link_Command NEXT }
alias ampprevious { dll wa_link.dll WA_Link_Command PREVIOUS }
alias ampquit { dll wa_link.dll WA_Link_Command CLOSE }

alias wastats {
  set %mp3 $dll($shortfn($mircdir\swamp.dll), WinAmpGet, trackfilename))
  set %mp3trackfilename $nopath($remove(%mp3,.mp3))
  set %mp3artist $sound(%mp3).artist
  set %mp3title $sound(%mp3).title
  set %mp3bitrate $sound(%mp3).bitrate $+ kbps
  set %mp3year $sound(%mp3).year
  set %mp3genre $sound(%mp3).genre
  set %mp3sample $sound(%mp3).sample $+ kHz
  set %mp3mode $sound(%mp3).mode
  set %mp3album $sound(%mp3).album
}
alias ampstate {
  if ($dll($shortfn($mircdirswamp.dll), WinAmpGet, RUNNING) == $false) { ampnotrunning }
  if ($dll($shortfn($mircdirswamp.dll), WinAmpGet, STATE) == Playing) { ampsong | halt } 
  if ($dll($shortfn($mircdirswamp.dll), WinAmpGet, STATE) == Paused) { amppaused | halt } 
  if ($dll($shortfn($mircdirswamp.dll), WinAmpGet, STATE) == Stopped) { ampstopped | halt }
}
alias amppaused { wastats | echo -a 1 [Winamp: 14 $+ Paused: %mp3artist - %mp3title $+ 1 $+ ] }
alias ampstopped { echo -a 1 [Winamp: 14 $+ Stopped $+ 1 $+ ] }
alias ampnotrunning { echo -a 1 [Winamp: 14 $+ Winamp not running $+ 1 $+ ] }
alias amp { 
  if ((-i isin $1)) { set %ampmode //echo -a } 
  else set %ampmode msg $active
  wastats | ampstate
}
alias ampsong {
  set %ampactive $gettok($read(ampstyles.jay,%ampactiveline),2,59)
  if (artist isin %ampactive) { set %ampactive $replace(%ampactive,artist,%mp3artist) }
  if (title isin %ampactive) { set %ampactive $replace(%ampactive,title,%mp3title) }
  if (bitrate isin %ampactive) { set %ampactive $replace(%ampactive,bitrate,%mp3bitrate) }
  if (year isin %ampactive) { set %ampactive $replace(%ampactive,year,%mp3year) }
  if (genre isin %ampactive) { set %ampactive $replace(%ampactive,genre,%mp3genre) }
  if (sample isin %ampactive) { set %ampactive $replace(%ampactive,sample,%mp3sample) }
  if (mode isin %ampactive) { set %ampactive $replace(%ampactive,mode,%mp3mode) }
  if (album isin %ampactive) { set %ampactive $replace(%ampactive,album,%mp3album) }
  if (trackfilename isin %ampactive) { set %ampactive $replace(%ampactive,trackfilename,%mp3trackfilename) }
  if ((%mp3artist == $null) && (%mp3title == $null)) { %ampmode [Winamp: 14 $+ %mp3trackfilename $+ 1 $+ ] }
  else %ampmode %ampactive
  return %ampactive
}
