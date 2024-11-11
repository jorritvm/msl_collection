;THIS FAST-WRITTEN-AND-THEREFOR-UGLY-AS-HELL SCRIPT 
;ALLOWS YOU TO CUT AN MP3 FILE WITH THE CORRESPONDIG CUE.

menu status,channel,query,menubar { 
  MP3/Cue-Split: mp3cuesplit
}
alias mp3cuesplit {
  window @MP3-SPLIT
  var %mp3 = $sfile(c:\,Select .MP3 file,Got it!)
  if ((.mp3 != $right(%mp3,4))) { echo 4 @MP3-SPLIT Error: Who are you kidding? This is not an MP3 file!!! }
  else { 
    var %cue = $sfile($nofile(%mp3),Select .CUE file,Got it!)
    if ((.cue != $right(%cue,4))) { echo 4 @MP3-SPLIT Error: Who are you kidding? This is not a CUE file!!! }
    else {   
      echo 5 @MP3-SPLIT Chosen File: %mp3
      echo 5 @MP3-SPLIT Linked With Cue: %cue
      var %o = $calc($sound(%mp3).bitrate * 128)
      echo 12 @MP3-SPLIT SONG BYTERATE: %o (derived from bitrate)
      var %i = 1 
      var %nr = 0
      :nextfile
      inc %nr
      while (($gettok($read(%cue,%i),1,32) != index)) {
        inc %i
      }
      var %min = $gettok($gettok($read(%cue,%i),3,32),1,58)
      var %sec = $gettok($gettok($read(%cue,%i),3,32),2,58)
      var %bytesstart = $calc((%sec + (60 * %min)) * %o)
      inc %i
      while (($gettok($read(%cue,%i),1,32) != index) && (%i != $lines(%cue)) && (%i != $calc($lines(%cue) + 1))) {
        inc %i
      }
      if ((%i < $calc($lines(%cue) + 1))) {
        var %min = $gettok($gettok($read(%cue,%i),3,32),1,58)
        var %sec = $gettok($gettok($read(%cue,%i),3,32),2,58)
        var %bytesend = $calc((%sec + (60 * %min)) * %o)
      }
      elseif ((%i == $calc($lines(%cue) + 1))) {
        var %bytesend = $file(%mp3).size
      }
      var %bytesdiff = $calc(%bytesend - %bytesstart)
      echo 5 @MP3-SPLIT SIZE TRACK %nr $+ : %bytesdiff bytes
      echo 4 @MP3-SPLIT STARTING BINARY PROCESS FOR TRACK $+ %nr
      write $+(",$nofile(%mp3),\,track,%nr,.mp3,")
      while ((%bytesstart < $calc(%bytesend - 8192))) {
        bread " $+ %mp3 $+ " %bytesstart 8192 &bmp3
        bwrite $+(",$nofile(%mp3),\,track,%nr,.mp3,") -1 -1 &bmp3
        var %bytesstart = %bytesstart + 8192
      }
      var %bytes2go = %bytesend - %bytesstart
      bread " $+ %mp3 $+ " %bytesstart %bytes2go &bmp3
      bwrite $+(",$nofile(%mp3),\,track,%nr,.mp3,") -1 -1 &bmp3
      var %bytesstart = %bytesstart + %bytes2go
      echo 4 @MP3-SPLIT TRACK $+ %nr COMPLETE
      if ((%bytesend != $file(%mp3).size)) { echo 12 @MP3-SPLIT __________________________________________________________ | goto nextfile }
      else echo 9 @MP3-SPLIT SPLIT ACTION COMPLETE
    }
  }
}
