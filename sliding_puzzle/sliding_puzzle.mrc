on *:load: {
  echo -a -
  echo -a Sliding puzzle V1.1 by jayke 
  echo -a Have lots of fun with it!
  echo -a -
}

menu status,channel,query,menubar {
  Sliding puzzle: sliding_puzzle_game
}

alias sliding_puzzle_game { dialog -m schuifspel schuifspel }

dialog schuifspel {
  title "Sliding puzzle"
  size -1 -1 400 400

  menu "Game", 20
  item "Shake Blocks", 21
  item "Quit Game", 22

  button "", 1, 0 0 100 100
  button "", 2, 100 0 100 100
  button "", 3, 200 0 100 100
  button "", 4, 300 0 100 100
  button "", 5, 0 100 100 100
  button "", 6, 100 100 100 100
  button "", 7, 200 100 100 100
  button "", 8, 300 100 100 100
  button "", 9, 0 200 100 100
  button "", 10, 100 200 100 100
  button "", 11, 200 200 100 100
  button "", 12, 300 200 100 100
  button "", 13, 0 300 100 100
  button "", 14, 100 300 100 100
  button "", 15, 200 300 100 100
  button "", 16, 300 300 100 100
}
on *:dialog:schuifspel:menu:21 { gblockset | gblockfill }
on *:dialog:schuifspel:menu:22 { dialog -x $dname $dname }
on *:dialog:schuifspel:init:0 { unset %gbutton* | gblockset | gblockfill }


alias gblockset {
  unset %gbutton*
  set %gcounter 0
  set %gbutton1 $rand(1,16)
  set %gbutton2 %gbutton1
  while ((%gbutton2 == %gbutton1)) { set %gbutton2 $rand(1,16) }
  set %gbutton3 %gbutton2
  while ((%gbutton3 == %gbutton2) || (%gbutton3 == %gbutton1)) { set %gbutton3 $rand(1,16) }
  set %gbutton4 %gbutton3
  while ((%gbutton4 == %gbutton3) || (%gbutton4 == %gbutton2) || (%gbutton4 == %gbutton1)) { set %gbutton4 $rand(1,16) }
  set %gbutton5 %gbutton4
  while ((%gbutton5 == %gbutton4) || (%gbutton5 == %gbutton3) || (%gbutton5 == %gbutton2) || (%gbutton5 == %gbutton1)) { set %gbutton5 $rand(1,16) }
  set %gbutton6 %gbutton5
  while ((%gbutton6 == %gbutton5) || (%gbutton6 == %gbutton4) || (%gbutton6 == %gbutton3) || (%gbutton6 == %gbutton2) || (%gbutton6 == %gbutton1)) { set %gbutton6 $rand(1,16) }
  set %gbutton7 %gbutton6
  while ((%gbutton7 == %gbutton6) || (%gbutton7 == %gbutton5) || (%gbutton7 == %gbutton4) || (%gbutton7 == %gbutton3) || (%gbutton7 == %gbutton2) || (%gbutton7 == %gbutton1)) { set %gbutton7 $rand(1,16) }
  set %gbutton8 %gbutton7
  while ((%gbutton8 == %gbutton7) || (%gbutton8 == %gbutton6) || (%gbutton8 == %gbutton5) || (%gbutton8 == %gbutton4) || (%gbutton8 == %gbutton3) || (%gbutton8 == %gbutton2) || (%gbutton8 == %gbutton1)) { set %gbutton8 $rand(1,16) }
  set %gbutton9 %gbutton8
  while ((%gbutton9 == %gbutton8) || (%gbutton9 == %gbutton7) || (%gbutton9 == %gbutton6) || (%gbutton9 == %gbutton5) || (%gbutton9 == %gbutton4) || (%gbutton9 == %gbutton3) || (%gbutton9 == %gbutton2) || (%gbutton9 == %gbutton1)) { set %gbutton9 $rand(1,16) }
  set %gbutton10 %gbutton9
  while ((%gbutton10 == %gbutton9) || (%gbutton10 == %gbutton8) || (%gbutton10 == %gbutton7) || (%gbutton10 == %gbutton6) || (%gbutton10 == %gbutton5) || (%gbutton10 == %gbutton4) || (%gbutton10 == %gbutton3) || (%gbutton10 == %gbutton2) || (%gbutton10 == %gbutton1)) { set %gbutton10 $rand(1,16) }
  set %gbutton11 %gbutton10
  while ((%gbutton11 == %gbutton10) || (%gbutton11 == %gbutton9) || (%gbutton11 == %gbutton8) || (%gbutton11 == %gbutton7) || (%gbutton11 == %gbutton6) || (%gbutton11 == %gbutton5) || (%gbutton11 == %gbutton4) || (%gbutton11 == %gbutton3) || (%gbutton11 == %gbutton2) || (%gbutton11 == %gbutton1)) { set %gbutton11 $rand(1,16) }
  set %gbutton12 %gbutton11
  while ((%gbutton12 == %gbutton11) || (%gbutton12 == %gbutton10) || (%gbutton12 == %gbutton9) || (%gbutton12 == %gbutton8) || (%gbutton12 == %gbutton7) || (%gbutton12 == %gbutton6) || (%gbutton12 == %gbutton5) || (%gbutton12 == %gbutton4) || (%gbutton12 == %gbutton3) || (%gbutton12 == %gbutton2) || (%gbutton12 == %gbutton1)) { set %gbutton12 $rand(1,16) }
  set %gbutton13 %gbutton12
  while ((%gbutton13 == %gbutton12) || (%gbutton13 == %gbutton11) || (%gbutton13 == %gbutton10) || (%gbutton13 == %gbutton9) || (%gbutton13 == %gbutton8) || (%gbutton13 == %gbutton7) || (%gbutton13 == %gbutton6) || (%gbutton13 == %gbutton5) || (%gbutton13 == %gbutton4) || (%gbutton13 == %gbutton3) || (%gbutton13 == %gbutton2) || (%gbutton13 == %gbutton1)) { set %gbutton13 $rand(1,16) }
  set %gbutton14 %gbutton13
  while ((%gbutton14 == %gbutton13) || (%gbutton14 == %gbutton12) || (%gbutton14 == %gbutton11) || (%gbutton14 == %gbutton10) || (%gbutton14 == %gbutton9) || (%gbutton14 == %gbutton8) || (%gbutton14 == %gbutton7) || (%gbutton14 == %gbutton6) || (%gbutton14 == %gbutton5) || (%gbutton14 == %gbutton4) || (%gbutton14 == %gbutton3) || (%gbutton14 == %gbutton2) || (%gbutton14 == %gbutton1)) { set %gbutton14 $rand(1,16) }
  set %gbutton15 %gbutton14
  while ((%gbutton15 == %gbutton14) || (%gbutton15 == %gbutton13) || (%gbutton15 == %gbutton12) || (%gbutton15 == %gbutton11) || (%gbutton15 == %gbutton10) || (%gbutton15 == %gbutton9) || (%gbutton15 == %gbutton8) || (%gbutton15 == %gbutton7) || (%gbutton15 == %gbutton6) || (%gbutton15 == %gbutton5) || (%gbutton15 == %gbutton4) || (%gbutton15 == %gbutton3) || (%gbutton15 == %gbutton2) || (%gbutton15 == %gbutton1)) { set %gbutton15 $rand(1,16) }
  set %gbutton16 %gbutton15
  while ((%gbutton16 == %gbutton15) || (%gbutton16 == %gbutton14) || (%gbutton16 == %gbutton13) || (%gbutton16 == %gbutton12) || (%gbutton16 == %gbutton11) || (%gbutton16 == %gbutton10) || (%gbutton16 == %gbutton9) || (%gbutton16 == %gbutton8) || (%gbutton16 == %gbutton7) || (%gbutton16 == %gbutton6) || (%gbutton16 == %gbutton5) || (%gbutton16 == %gbutton4) || (%gbutton16 == %gbutton3) || (%gbutton16 == %gbutton2) || (%gbutton16 == %gbutton1)) { set %gbutton16 $rand(1,16) }
}
alias gblockfill { 
  if ((%gbutton1 == 16)) { set %gbutton1 zwart }
  if ((%gbutton2 == 16)) { set %gbutton2 zwart }
  if ((%gbutton3 == 16)) { set %gbutton3 zwart }
  if ((%gbutton4 == 16)) { set %gbutton4 zwart }
  if ((%gbutton5 == 16)) { set %gbutton5 zwart }
  if ((%gbutton6 == 16)) { set %gbutton6 zwart }
  if ((%gbutton7 == 16)) { set %gbutton7 zwart }
  if ((%gbutton8 == 16)) { set %gbutton8 zwart }
  if ((%gbutton9 == 16)) { set %gbutton9 zwart }
  if ((%gbutton10 == 16)) { set %gbutton10 zwart }
  if ((%gbutton11 == 16)) { set %gbutton11 zwart }
  if ((%gbutton12 == 16)) { set %gbutton12 zwart }
  if ((%gbutton13 == 16)) { set %gbutton13 zwart }
  if ((%gbutton14 == 16)) { set %gbutton14 zwart }
  if ((%gbutton15 == 16)) { set %gbutton15 zwart }
  if ((%gbutton16 == 16)) { set %gbutton16 zwart }

  did -a schuifspel 1 %gbutton1
  did -a schuifspel 2 %gbutton2
  did -a schuifspel 3 %gbutton3
  did -a schuifspel 4 %gbutton4
  did -a schuifspel 5 %gbutton5
  did -a schuifspel 6 %gbutton6
  did -a schuifspel 7 %gbutton7
  did -a schuifspel 8 %gbutton8
  did -a schuifspel 9 %gbutton9
  did -a schuifspel 10 %gbutton10
  did -a schuifspel 11 %gbutton11
  did -a schuifspel 12 %gbutton12
  did -a schuifspel 13 %gbutton13
  did -a schuifspel 14 %gbutton14
  did -a schuifspel 15 %gbutton15
  did -a schuifspel 16 %gbutton16
}
dialog gclickerror {
  size -1 -1 150 100
  Title "Error"
  text "Click The Right", 7, 0 10 150 15, center
  text "Button! Dumbass.. :/", 15, 0 30 150 15, center
  button "OK", 8, 45 60 60 30, ok
}
alias gfindblack { 
  if (($did(schuifspel,1) == zwart)) { set %gtemp 1 }
  if (($did(schuifspel,2) == zwart)) { set %gtemp 2 }
  if (($did(schuifspel,3) == zwart)) { set %gtemp 3 }
  if (($did(schuifspel,4) == zwart)) { set %gtemp 4 }
  if (($did(schuifspel,5) == zwart)) { set %gtemp 5 }
  if (($did(schuifspel,6) == zwart)) { set %gtemp 6 }
  if (($did(schuifspel,7) == zwart)) { set %gtemp 7 }
  if (($did(schuifspel,8) == zwart)) { set %gtemp 8 }
  if (($did(schuifspel,9) == zwart)) { set %gtemp 9 }
  if (($did(schuifspel,10) == zwart)) { set %gtemp 10 }
  if (($did(schuifspel,11) == zwart)) { set %gtemp 11 }
  if (($did(schuifspel,12) == zwart)) { set %gtemp 12 }
  if (($did(schuifspel,13) == zwart)) { set %gtemp 13 }
  if (($did(schuifspel,14) == zwart)) { set %gtemp 14 }
  if (($did(schuifspel,15) == zwart)) { set %gtemp 15 }
  if (($did(schuifspel,16) == zwart)) { set %gtemp 16 }
}
;button1
on *:dialog:schuifspel:sclick:1 {
  set %gcounter $calc(%gcounter + 1)
  gfindblack  
  if (($calc(1 - %gtemp) == 4) || ($calc(1 - %gtemp) == 1) || ($calc(%gtemp - 1) == 4) || ($calc(%gtemp - 1) == 1)) {
    did -a $dname %gtemp $did(1)
    did -a $dname 1 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button2
on *:dialog:schuifspel:sclick:2 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(2 - %gtemp) == 4) || ($calc(2 - %gtemp) == 1) || ($calc(%gtemp - 2) == 4) || ($calc(%gtemp - 2) == 1)) {
    did -a $dname %gtemp $did(2)
    did -a $dname 2 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button3
on *:dialog:schuifspel:sclick:3 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(3 - %gtemp) == 4) || ($calc(3 - %gtemp) == 1) || ($calc(%gtemp - 3) == 4) || ($calc(%gtemp - 3) == 1)) {
    did -a $dname %gtemp $did(3)
    did -a $dname 3 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button4
on *:dialog:schuifspel:sclick:4 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(4 - %gtemp) == 4) || ($calc(4 - %gtemp) == 1) || ($calc(%gtemp - 4) == 4) || ($calc(%gtemp - 4) == 1)) {
    did -a $dname %gtemp $did(4)
    did -a $dname 4 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button5
on *:dialog:schuifspel:sclick:5 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(5 - %gtemp) == 4) || ($calc(5 - %gtemp) == 1) || ($calc(%gtemp - 5) == 4) || ($calc(%gtemp - 5) == 1)) {
    did -a $dname %gtemp $did(5)
    did -a $dname 5 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button6
on *:dialog:schuifspel:sclick:6 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(6 - %gtemp) == 4) || ($calc(6 - %gtemp) == 1) || ($calc(%gtemp - 6) == 4) || ($calc(%gtemp - 6) == 1)) {
    did -a $dname %gtemp $did(6)
    did -a $dname 6 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button7
on *:dialog:schuifspel:sclick:7 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(7 - %gtemp) == 4) || ($calc(7 - %gtemp) == 1) || ($calc(%gtemp - 7) == 4) || ($calc(%gtemp - 7) == 1)) {
    did -a $dname %gtemp $did(7)
    did -a $dname 7 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button8
on *:dialog:schuifspel:sclick:8 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(8 - %gtemp) == 4) || ($calc(8 - %gtemp) == 1) || ($calc(%gtemp - 8) == 4) || ($calc(%gtemp - 8) == 1)) {
    did -a $dname %gtemp $did(8)
    did -a $dname 8 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button9
on *:dialog:schuifspel:sclick:9 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(9 - %gtemp) == 4) || ($calc(9 - %gtemp) == 1) || ($calc(%gtemp - 9) == 4) || ($calc(%gtemp - 9) == 1)) {
    did -a $dname %gtemp $did(9)
    did -a $dname 9 zwart
    checkwin 
  }    
  else { dialog -m gclickerror gclickerror }
}
;button10
on *:dialog:schuifspel:sclick:10 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(10 - %gtemp) == 4) || ($calc(10 - %gtemp) == 1) || ($calc(%gtemp - 10) == 4) || ($calc(%gtemp - 10) == 1)) {
    did -a $dname %gtemp $did(10)
    did -a $dname 10 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button11
on *:dialog:schuifspel:sclick:11 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(11 - %gtemp) == 4) || ($calc(11 - %gtemp) == 1) || ($calc(%gtemp - 11) == 4) || ($calc(%gtemp - 11) == 1)) {
    did -a $dname %gtemp $did(11)
    did -a $dname 11 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button12
on *:dialog:schuifspel:sclick:12 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(12 - %gtemp) == 4) || ($calc(12 - %gtemp) == 1) || ($calc(%gtemp - 12) == 4) || ($calc(%gtemp - 12) == 1)) {
    did -a $dname %gtemp $did(12)
    did -a $dname 12 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button13
on *:dialog:schuifspel:sclick:13 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(13 - %gtemp) == 4) || ($calc(13 - %gtemp) == 1) || ($calc(%gtemp - 13) == 4) || ($calc(%gtemp - 13) == 1)) {
    did -a $dname %gtemp $did(13)
    did -a $dname 13 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button14
on *:dialog:schuifspel:sclick:14 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(14 - %gtemp) == 4) || ($calc(14 - %gtemp) == 1) || ($calc(%gtemp - 14) == 4) || ($calc(%gtemp - 14) == 1)) {
    did -a $dname %gtemp $did(14)
    did -a $dname 14 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button15
on *:dialog:schuifspel:sclick:15 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(15 - %gtemp) == 4) || ($calc(15 - %gtemp) == 1) || ($calc(%gtemp - 15) == 4) || ($calc(%gtemp - 15) == 1)) {
    did -a $dname %gtemp $did(15)
    did -a $dname 15 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
;button16
on *:dialog:schuifspel:sclick:16 {
  gfindblack  
  set %gcounter $calc(%gcounter + 1)
  if (($calc(16 - %gtemp) == 4) || ($calc(16 - %gtemp) == 1) || ($calc(%gtemp - 16) == 4) || ($calc(%gtemp - 16) == 1)) {
    did -a $dname %gtemp $did(16)
    did -a $dname 16 zwart
    checkwin
  }    
  else { dialog -m gclickerror gclickerror }
}
alias checkwin {
  if (($did(schuifspel,1) == 1) && ($did(schuifspel,2) == 2) && ($did(schuifspel,3) == 3) && ($did(schuifspel,4) == 4) && ($did(schuifspel,5) == 5) && ($did(schuifspel,6) == 6) && ($did(schuifspel,7) == 7) && ($did(schuifspel,8) == 8) && ($did(schuifspel,9) == 9) && ($did(schuifspel,10) == 10) && ($did(schuifspel,11) == 11) && ($did(schuifspel,12) == 12) && ($did(schuifspel,13) == 13) && ($did(schuifspel,14) == 14) && ($did(schuifspel,15) == 15) && ($did(schuifspel,16) == zwart)) { dialog -m gwon gwon | did -a gwon 15 in %gcounter moves, congrats!!  }
}
dialog gwon {
  size -1 -1 200 150
  Title "Game Over"
  text "You have completed the game", 7, 0 30 200 15, center
  text "", 15, 0 50 200 15, center
  button "OK", 8, 60 90 60 30, ok
}
