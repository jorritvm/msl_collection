on *:socklisten:lanlist:{
  sockaccept lantalk
}

on *:sockread:lantalk:{
  if ($sockerr > 0) return
  :nextread
  sockread %temp
  if ($sockbr == 0) return
  echo 3 @lantalk  $+ %temp
  goto nextread
}

alias lancon {
  sockopen lantalk $?="IP?" 79755
}
alias lantalk {
  window -e @lantalk /lansay Lucida Console 14
  socklisten lanlist 79755
}
alias lansay { 
  echo 4 @lantalk  $+ %lannick: $1- 
  sockwrite -n %lannick: lantalk $1-
}
on *:close:@lantalk:{
  sockclose lantalk
  sockclose lanlist
}
dialog ltsetup {
  size -1 -1 170 75
  title "LT SETUP"
  text "Enter nickname", 1, 5 10 170 15
  edit "", 2, 5 35 150 25
}
on *:dialog:ltsetup:*:{
  if (($devent == init)) did -ra $dname 2 %lannick
  if (($devent == close)) set %lannick $did($dname,2)
}
