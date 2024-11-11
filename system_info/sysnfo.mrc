menu channel,query {
  -  
  PC Stats:pcstats
  Change Colors:/dialog -m colchange colchange
  -
}
alias pcstats2 { 
  dem Operating System: $de(os)
  dem CPU: $de(cpuinfo) $+ , $de(cpuspeed) $+ , $de(cpuL2cache) ( $+ $de(cpuload) Load $+ )
  dem Used Physical Memory: $de(usedphysicalmem) MB 
  dem Total Physical Memory: $de(totalphysicalmem) MB 
  dem Uptime: $de(uptime)
  dem Current Downstream: $de(banddown) $+ kb/s 
  dem Current Upstream: $de(bandup) $+ kb/s 
  dem HD: $de(hdspace) 
  dem Total Free: $de(totalhdspacefree) $+ / $+ $de(totalhdspace) 
}

alias hdd {
  set %sysnfocol1  $+ $readini(sysnfo.ini, colors, c1)
  set %sysnfocol2  $+ $readini(sysnfo.ini, colors, c2)
  set %sysnfohdd 1
  set %sysnfohddletters cdefghijklmnopqrstuvwxyz
  while ( %sysnfohdd != 25 ) {
    set %sysnfocurrletter $mid(cdefghijklmnopqrstuvwxyz,%sysnfohdd,1)     
    if ($round($calc(($disk(%sysnfocurrletter).free)/1048576),2) > 1) { set %sysnfodisk $+ %sysnfohdd ( $+ $upper(%sysnfocurrletter) $+ : $round($calc(($disk(%sysnfocurrletter).free)/1073741824),2) $+ GB $+ / $+ $round($calc(($disk(%sysnfocurrletter).size)/1073741824),2) $+ GB) }
    set %sysnfohdd $calc(%sysnfohdd + 1)
    set %sysnfodisk251 $calc(%sysnfodisk251 + $disk(%sysnfocurrletter).free)
    set %sysnfodisk261 $calc(%sysnfodisk261 + $disk(%sysnfocurrletter).size)
  }
  set %sysnfodisk25 $calc(%sysnfodisk251 / 1073741824)
  set %sysnfodisk26 $calc(%sysnfodisk261 / 1073741824)
  set  %sysnfodisktotfree $round( %sysnfodisk25 ,2 ) $+ GB
  set %sysnfodisktotsto $round( %sysnfodisk26 ,2 ) $+ GB
}
alias sysnfocolsh {
  set %sysnfocol1  $+ $readini(sysnfo.ini, colors, c1)
  set %sysnfocol2  $+ $readini(sysnfo.ini, colors, c2)
}
alias PCstats {
  unset %sysnfo*  
  hdd
  if ((i isin $1)) { set %mode /echo }
  else set %mode /say
  %mode %sysnfocol1 [Os] %sysnfocol2 $dll(moo.dll,osinfo,_) 
  %mode %sysnfocol1 [CpU] %sysnfocol2 $dll(moo.dll,cpuinfo,_) 
  %mode %sysnfocol1 [MeM] %sysnfocol2 $dll(moo.dll,meminfo,_) 
  %mode %sysnfocol1 [UpTime] %sysnfocol2 $duration($calc($ticks /1000)) 
  %mode %sysnfocol1 [Total Free Space] %sysnfocol2 %sysnfodisktotfree
  %mode %sysnfocol1 [Total Storage Space] %sysnfocol2 %sysnfodisktotsto
  %mode %sysnfocol1 [Free Space] %sysnfocol2 %sysnfodisk1 %sysnfodisk2 %sysnfodisk3  %sysnfodisk5 %sysnfodisk4  %sysnfodisk5 %sysnfodisk6 %sysnfodisk7
  %mode %sysnfocol1 [U/D Stream] %sysnfocol2 $chr(40) $+ $dll(moo.dll,interfaceinfo,_)
}
dialog colchange {
  size -1 -1 100 150
  title "Paint"
  box "COLORS", 1, 5 5 90 140
  text "Color 1:", 2, 15 25 90 60 
  edit "", 3, 60 25 20 20 
  text "Color 2:", 4, 15 50 90 60
  edit "", 5, 60 50 20 20
  button "View Colors", 6, 15 80 70 25
  button "Save/Quit", 7, 15 110 70 25, ok
}
on *:dialog:colchange:sclick:6:{
  /echo -a These Are The Colors: | /echo -a 1,0 0 0,1 1 0,2 2 0,3 3 0,4 4 0,5 5 0,6 6 0,7 7 0,8 8 0,9 9 0,10 10 0,11 11 0,12 12 0,13 13 0,14 14 0,15 15  
}
on *:dialog:colchange:sclick:7:{
  writeini sysnfo.ini colors c1  $did($dname,3)
  writeini sysnfo.ini colors c2  $did($dname,5)
}
alias du { echo -a %sysnfocol1 [U/D Stream] %sysnfocol2 $chr(40) $dll(moo.dll,interfaceinfo,_)
