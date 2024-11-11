alias prefix_remover { dialog -m prefix_remover prefix_remover }
dialog prefix_remover {
  title "prefix_remover"
  size -1 -1 400 400
  text "paste text, then select the piece of text you want to get rid of in every line", 2, 10 7 380 25 
  edit "", 1, 5 25 390 300, autohs autovs hsbar vsbar multi return
  button "show new stuff", 3, 5 350 390 40
}
on *:dialog:prefix_remover:sclick:3:{
  write -c prefix_remover_output.txt
  var %i = 0
  var %begin = $did(1).selstart 
  var %end = $+(-,$did(1).selend)
  while ((%i < $did(1).lines)) {
    inc %i
    write prefix_remover_output.txt $+($left($did(1,%i),%begin),$right($did(1,%i),%end))
  }
  run prefix_remover_output.txt
}
