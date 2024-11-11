alias connect_freenode {
  server chat.freenode.net 6667 jayke_:$readini(secrets.ini, freenode, idenitfy_password)
}

; Auto-join channels on specific networks when connecting
on *:CONNECT: {
  ; Check if the network is Freenode
  if ($network == Freenode) {
    ; automatically identify with NickServ
    msg nickserv identify $readini(secrets.ini, freenode, idenitfy_password)
    nick jayke

    ; Call the alias to join channels on Freenode
    join_freenode_channels
  }
}

; Alias to join a list of channels on Freenode
alias join_freenode_channels {
  join #python
  join #freenode
  join #archlinux
  join #networking
  join #math
  join #electronics
  join #qt
  join #windows
  join #arduino
  join #raspberrypi
  join #ffmpeg
}
