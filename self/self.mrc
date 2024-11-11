; create 'self notifications' window
alias create_self_notifications_window {
  window -aezk0 @local
}

; Register when my nickname was used (logs as well)
on *:text:*jayke*:*:{ 
  if ($nick !isin $text) { 
    ; Open the @local window if it doesn't exist
    if ($window(@local) == $null) { 
      create_self_notifications_window
    }
    ; Log the message in @local window with custom formatting
    echo @local $timestamp $+(<,4,$chan,1,>) < $+ $nick $+ > $1- 
  } 
}

; Play a sound on direct query message that is not in the active window
on *:text:*:?:{ 
  if ($nick != $active) {
    splay tic.wav 
  }
}

; Log the usage of commands in channel @local
on *:input:@local:{ 
  if ($left($1,1) == /) { 
    echo > 10 $+ $1- 
  } 
}
