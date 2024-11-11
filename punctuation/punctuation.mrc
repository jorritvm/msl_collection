; old single line version
; on *:input:*:if ($left($1,1) == / || $left($1,1) == !) { return } | msg $target $+($iif($1 != $me && * !iswm $address($1,1) && $1 != $active && $1 != $right($active,-1),$upper($replace($left($1,1),å,Å,ä,Ä,ö,Ö)),$left($1,1)),$replace($right($1-,-1),$+($chr(32),i,$chr(32)),$+($chr(32),I,$chr(32)),$+($chr(32),i.),$+($chr(32),I.),$+($chr(32),i'),$+($chr(32),I')),$iif(!$istok($chr(40) $chr(41) ] [ > < ? ! .,$right($1-,1),32) && !$istok(:0 $+($chr(59),0) :o $+($chr(59),o) :x $+($chr(59),x) :p :~ $+($chr(59),~) =~ $+($chr(59),p) =x =p =o :i =i $+($chr(59),i) :D $+($chr(59),D) =D :/ =/ $+($chr(59),/),$right($1-,2),32),.)) | haltdef

; converted to understand logic better
on *:input:*: {
  ; Check if the first character is / or !, indicating a command
  if ($left($1,1) == / || $left($1,1) == !) {
    return
  }

  ; Prepare the message prefix based on various conditions
  var %prefix = $left($1,1)
  if ($1 != $me && * !iswm $address($1,1) && $1 != $active && $1 != $right($active,-1)) {
    %prefix = $upper($replace(%prefix,å,Å,ä,Ä,ö,Ö))
  }

  ; Replace lowercase "i" with uppercase "I" in specific contexts
  var %message = $right($1-,-1)
  %message = $replace(%message, $+($chr(32),i,$chr(32)), $+($chr(32),I,$chr(32)), $+($chr(32),i.), $+($chr(32),I.), $+($chr(32),i'), $+($chr(32),I')  )

  ; Check if the last character is one of the specified characters
  var %last_char = $right($1-,1)
  var %special_chars = $chr(40) $chr(41) ] [ > < ? ! . 
  var %emoji_list = :0 $+($chr(59),0) :o $+($chr(59),o) :x $+($chr(59),x) :p 
  %emoji_list = %emoji_list $+(:~ $+($chr(59),~) =~ $+($chr(59),p) =x =p =o)
  %emoji_list = %emoji_list $+(:i =i $+($chr(59),i) :D $+($chr(59),D) =D)
  %emoji_list = %emoji_list $+(:/ =/ $+($chr(59),/))

  ; Append a dot at the end if conditions are not met
  if (!$istok(%special_chars, %last_char, 32) && !$istok(%emoji_list, $right($1-,2), 32)) {
    %message = %message $+ .
  }

  ; Send the message to the target channel or user
  msg $target $+(%prefix, %message)

  ; Prevent the default input behavior
  haltdef
}
