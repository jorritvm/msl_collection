;Topic Styles & Fun Talkers - Modded By [JaY]
on *:load:{
  echo -a -
  echo 4 -a Script Loaded !
  echo 2 -a The Topic Styles and Fun Talkers have been added to your popup list.
  echo 2 -a To unload this script, type /unload -rs topfuntalk.mrc
  echo 2 -a Grtz, [JaY]
  echo -a -
}

alias banners {
  if ($1 == '%%,) { if ($2 == 1) { say 15'%0,15%,14,15'%15,14%,1,14'%14,1%,0,1 $3- 14,1'%1,14%,15,14'%14,15%,0,15'%15%, } | if ($2 == 2) { say 8'%0,8%,7,8'%8,7%,4,7'%7,4%,5,4'%4,5%,1,5'%5,1%,8,1 $3- 5,1'%1,5%,4,5'%5,4%,7,4'%4,7%,8,7'%7,8%,0,8'%8%, } | if ($2 == 3) { say 9'%0,9%,3,9'%9,3%,1,3'%3,1%,9,1 $3- 3,1'%1,3%,9,3'%3,9%,0,9'%9%, } | if ($2 == 4) { say 11'%0,11%,12,11'%11,12%,2,12'%12,2%,1,2'%2,1%,11,1 $3- 2,1'%1,2%,12,2'%2,12%,11,12'%12,11%,0,11'%11%, } | if ($2 == 5) { say 13'%0,13%,6,13'%13,6%,1,6'%6,1%,13,1 $3- 6,1'%1,6%,13,6'%6,13%,0,13'%13%, } }
  if ($1 == ��) { if ($2 == 1) { say 15�14,15�1,14�15,1 $3- 1,14�14,15�15� } | if ($2 == 2) { say 8�7,8�4,7�5,4�1,5�8,1 $3- 1,5�5,4�4,7�7,8�8� } | if ($2 == 3) { say 9�3,9�1,3�9,1 $3- 1,3�3,9�9� } | if ($2 == 4) { say 11�12,11�2,12�1,2�11,1 $3- 1,2�2,12�12,11�11� } | if ($2 == 5) { say 13�6,13�1,6�13,1 $3- 1,6�6,13�13� } }
  if ($1 == <>) { if ($2 == 1) { say 15<0,15>14,15<15,14>1,14<14,1>0,1 $3- 14,1<1,14>15,14<14,15>0,15<15> } | if ($2 == 2) { say 8<0,8>7,8<8,7>4,7<7,4>5,4<4,5>1,5<5,1>8,1 $3- 5,1<1,5>4,5<5,4>7,4<4,7>8,7<7,8>0,8<8> } | if ($2 == 3) { say 9<0,9>3,9<9,3>1,3<3,1>9,1 $3- 3,1<1,3>9,3<3,9>0,9<9> } | if ($2 == 4) { say 11<0,11>12,11<11,12>2,12<12,2>1,2<2,1>11,1 $3- 2,1<1,2>12,2<2,12>11,12<12,11>0,11<11> } | if ($2 == 5) { say 13<0,13>6,13<13,6>1,6<6,1>13,1 $3- 6,1<1,6>13,6<6,13>0,13<13> } }
  if ($1 == <<>>) { if ($2 == 1) { say 15<0,15<14,15<15,14<1,14<14,1<0,1 $3- 14,1>1,14>15,14>14,15>0,15>15> } | if ($2 == 2) { say 8<0,8<7,8<8,7<4,7<7,4<5,4<4,5<1,5<5,1<8,1 $3- 5,1>1,5>4,5>5,4>7,4>4,7>8,7>7,8>0,8>8> } | if ($2 == 3) { say 9<0,9<3,9<9,3<1,3<3,1<9,1 $3- 3,1>1,3>9,3>3,9>0,9>9> } | if ($2 == 4) { say 11<0,11<12,11<11,12<2,12<12,2<1,2<2,1<11,1 $3- 2,1>1,2>12,2>2,12>11,12>12,11>0,11>11> } | if ($2 == 5) { say 13<0,13<6,13<13,6<1,6<6,1<13,1 $3- 6,1>1,6>13,6>6,13>0,13>13> } }
  if ($1 == ()) { if ($2 == 1) { say 15(0,15)14,15(15,14)1,14(14,1)0,1 $3- 14,1(1,14)15,14(14,15)0,15(15) } | if ($2 == 2) { say 8(0,8)7,8(8,7)4,7(7,4)5,4(4,5)1,5(5,1)8,1 $3- 5,1(1,5)4,5(5,4)7,4(4,7)8,7(7,8)0,8(8) } | if ($2 == 3) { say 9(0,9)3,9(9,3)1,3(3,1)9,1 $3- 3,1(1,3)9,3(3,9)0,9(9) } | if ($2 == 4) { say 11(0,11)12,11(11,12)2,12(12,2)1,2(2,1)11,1 $3- 2,1(1,2)12,2(2,12)11,12(12,11)0,11(11) } | if ($2 == 5) { say 13(0,13)6,13(13,6)1,6(6,1)13,1 $3- 6,1(1,6)13,6(6,13)0,13(13) } }
  if ($1 == (())) { if ($2 == 1) { say 15(0,15(14,15(15,14(1,14(14,1(0,1 $3- 14,1)1,14)15,14)14,15)0,15)15) } | if ($2 == 2) { say 8(0,8(7,8(8,7(4,7(7,4(5,4(4,5(1,5(5,1(8,1 $3- 5,1)1,5)4,5)5,4)7,4)4,7)8,7)7,8)0,8)8) } | if ($2 == 3) { say 9(0,9(3,9(9,3(1,3(3,1(9,1 $3- 3,1)1,3)9,3)3,9)0,9)9) } | if ($2 == 4) { say 11(0,11(12,11(11,12(2,12(12,2(1,2(2,1(11,1 $3- 2,1)1,2)12,2)2,12)11,12)12,11)0,11)11) } | if ($2 == 5) { say 13(0,13(6,13(13,6(1,6(6,1(13,1 $3- 6,1)1,6)13,6)6,13)0,13)13) } }
  if ($1 == []) { if ($2 == 1) { say 15[0,15]14,15[15,14]1,14[14,1]0,1 $3- 14,1[1,14]15,14[14,15]0,15[15] } | if ($2 == 2) { say 8[0,8]7,8[8,7]4,7[7,4]5,4[4,5]1,5[5,1]8,1 $3- 5,1[1,5]4,5[5,4]7,4[4,7]8,7[7,8]0,8[8] } | if ($2 == 3) { say 9[0,9]3,9[9,3]1,3[3,1]9,1 $3- 3,1[1,3]9,3[3,9]0,9[9] } | if ($2 == 4) { say 11[0,11]12,11[11,12]2,12[12,2]1,2[2,1]11,1 $3- 2,1[1,2]12,2[2,12]11,12[12,11]0,11[11] } | if ($2 == 5) { say 13[0,13]6,13[13,6]1,6[6,1]13,1 $3- 6,1[1,6]13,6[6,13]0,13[13] } }
  if ($1 == [[]]) { if ($2 == 1) { say 15[0,15[14,15[15,14[1,14[14,1[0,1 $3- 14,1]1,14]15,14]14,15]0,15]15] } | if ($2 == 2) { say 8[0,8[7,8[8,7[4,7[7,4[5,4[4,5[1,5[5,1[8,1 $3- 5,1]1,5]4,5]5,4]7,4]4,7]8,7]7,8]0,8]8] } | if ($2 == 3) { say 9[0,9[3,9[9,3[1,3[3,1[9,1 $3- 3,1]1,3]9,3]3,9]0,9]9] } | if ($2 == 4) { say 11[0,11[12,11[11,12[2,12[12,2[1,2[2,1[11,1 $3- 2,1]1,2]12,2]2,12]11,12]12,11]0,11]11] } | if ($2 == 5) { say 13[0,13[6,13[13,6[1,6[6,1[13,1 $3- 6,1]1,6]13,6]6,13]0,13]13] } }
  if ($1 == !�) { if ($2 == 1) { say 15!0,15�14,15!15,14�1,14!14,1�0,1 $3- 14,1!1,14�15,14!14,15�0,15!15� } | if ($2 == 2) { say 8!0,8�7,8!8,7�4,7!7,4�5,4!4,5�1,5!5,1�8,1 $3- 5,1!1,5�4,5!5,4�7,4!4,7�8,7!7,8�0,8!8� } | if ($2 == 3) { say 9!0,9�3,9!9,3�1,3!3,1�9,1 $3- 3,1!1,3�9,3!3,9�0,9!9� } | if ($2 == 4) { say 11!0,11�12,11!11,12�2,12!12,2�1,2!2,1�11,1 $3- 2,1!1,2�12,2!2,12�11,12!12,11�0,11!11� } | if ($2 == 5) { say 13!0,13�6,13!13,6�1,6!6,1�13,1 $3- 6,1!1,6�13,6!6,13�0,13!13� } }
  if ($1 == \/) { if ($2 == 1) { say 15/0,15\14,15/15,14\1,14/14,1\0,1 $3- 14,1/1,14\15,14/14,15\0,15/15\ } | if ($2 == 2) { say 8/0,8\7,8/8,7\4,7/7,4\5,4/4,5\1,5/5,1\8,1 $3- 5,1/1,5\4,5/5,4\7,4/4,7\8,7/7,8\0,8/8\ } | if ($2 == 3) { say 9/0,9\3,9/9,3\1,3/3,1\9,1 $3- 3,1/1,3\9,3/3,9\0,9/9\ } | if ($2 == 4) { say 11/0,11\12,11/11,12\2,12/12,2\1,2/2,1\11,1 $3- 2,1/1,2\12,2/2,12\11,12/12,11\0,11/11\ } | if ($2 == 5) { say 13/0,13\6,13/13,6\1,6/6,1\13,1 $3- 6,1/1,6\13,6/6,13\0,13/13\ } }
}

menu status,channel,commands,query,menubar {
  �  Topic Styles � 
  .� Specify � :/topic # $$?="Enter A Topic"
  .� Welcome � :/topic # ���������������� \\/\//elcome To # ����������������
  .� �cript Topic � :/topic # %ircversion     
  .-
  .� Designs � 
  ..�~`~*��� :/topic # �~`~*���  $$?="Enter Topic" ���*~`~�
  ..��������:/topic # �������� $?="Enter Topic" ��������
  ..���������������� :/topic # ����������������  $$?="Enter Topic" ����������������
  ..(�`�._(�`�._(�`�._( :/topic # (�`�._(�`�._(�`�._( $$?="Enter Topic" )_.���)_.���)_.���)
  ..(�`�.�(�`�.�(�`�.�(�`�.�:/topic # .(�`�.�(�`�.�(�`�.�(�`�.� $?="Enter Topic" �.���)�.���)�.���)�.���)
  ..(�`�.��.���`�.��.-> :/topic # (�`�.��.���`�.��.-> $$?="Enter Topic" <-.��.���`�.��.���)
  ..���.��.�����.��.�����.��.->:/topic # ���.��.�����.��.�����.��.-> $?="Enter Topic" <-.��.�����.��.�����.��.���
  ..,-*-,._.,-*'^'~*-,._.,-*~>:/topic # .,-*-,._.,-*'^'~*-,._.,-*~> $?="Enter Topic" <~*-,._.,-*~'^'~*-,._.,-*-,.
  ..|!�*'~``~'*�!||!�*'~``~'*�!|:/topic # |!�*'~``~'*�!||!�*'~``~'*�!| $?="Enter Topic" |!�*'~``~'*�!||!�*'~``~'*�!|
  ..��*~`~*��|��*~`~*��|��*~ -=�=-:/topic # ��*~`~*��|��*~`~*��|��*~ -=�=- $?="Enter Topic" -=�=- ~*��|��*~`~*��|��*~`~*��
  ..�� �� ��:topic $chan 1,1��2��12��6��4��7��9��8��13,1 $$?="Topic:" 8��9��7��4��6��12��2��1��
  .� Black and Gray � :topic $chan 1,1.14,14.15,15.16,1 $$?="Topic:" 15,15.14,14.1,1.
  .� Blue colors � :topic $chan  11,0,%0,11%`12,11,%11,12%`2,12,%12,2%`11,2 $$?="Topic:" 12,2`%2,12%,11,12`%12,11%,0,11`%11,0%,
  .� Green color � :topic $chan 9`%0,9%, 3,9`%9,3%, 1,3`%3,1%,9 $$?="Topic:" 3,1`%1,3%, 9,3`%3,9%, 0,9`%9%,
  .� Bold Blue � :topic $chan 0,12�2,12`�12,2�1,2`�2,1�0,1 -= $$?="Topic:" =- 2,1`�1,2�12,2`�2,12�0,12`�12
  .� Bold Green � :topic $chan 9,0�0,9�3,9�9,3�1,3�3,1�9 $$?="Topic:" 3,1�1,3�9,3�3,9�0,9�9,0�
  .� Ryany � :topic $chan 4,0%0,4%4,4 5,4%4,5%5,5 1,5%5,1%1,1 0,1 $$?="Topic:" 5,1%1,5%5,5 4,5%5,4%4,4 0,4%4,0% 
  .� yellow, red and black � :topic $chan 8,0�0,8�7,8�8,7�4,7�7,4�5,4�4,5�1,5�5,1�8,1 $$?="Topic:" 5,1�1,5�4,5�5,4�7,4�4,7�8,7�7,8�0,8�8,0�
  .� yellow, red and black with ||| � :topic $chan 8,0|0,8|8,7|4,7|7,4|5,4|4,5|1,5|5,1|9,1 $$?="Topic:" 5,1|1,5|4,5|5,4|7,4|4,7|8,7|0,8|8,0|  9,12 
  .� yellow, red and black small � :topic $chan 8�0,8�4,8�8,4�1,4�4,1�8,1 $$?="Topic:" 4,1�1,4�8,4�4,8�0,8�8,16�
  .� Blue colors with ||| � :topic $chan 11,0�|0,11�|12,11�|11,12�|2,12�|12,2�|1,2�|2,1�|11,1 $$?="Topic:" 2,1|�1,2|�12,2|�2,12|�11,12|�12,11|�0,11|�11,0|�4
  .� Rainbow ||| � :topic $chan 6,12|12,6|13,6|6,13|4,13|13,4|7,4|4,7|8,7|7,8|9,8|8,9|10,9|9,10|12,10|10,12|16,12 $$?="Topic:" 10,12|12,10|9,10|10,9|8,9|9,8|7,8|8,7|4,7|7,4|13,4|4,13|6,1
  .� Rainbow 2 � :/topic # 2{3{4{5{6{7{8{9{10{11{12{13{14{15{2{3{4{5{6{7{8{9{10{11{12{13{14{15{1 $$?="Enter Topic:" 15}14}13}12}11}10}9}8}7}6}5}4}3}2}15}14}13}12}11}10}9}8}7}6}5}4}3}2}
  .� Diamonds � :/topic # 4,2�2,4�13,2�2,13�15,2�2,15�8,2�2,8�11,2�2,11�9,2�2,9�0,1 $$?="Enter Topic:" 2,9�9,2�2,11�11,2�2,8�8,2�2,15�15,2�2,13�13,2�2,4�4,2�
  .� nice one � :topic $chan 15,0"�0,15��13,15"�15,13��6,13"�13,6��14,6"�6,14��1,14"�14,1��1,1t0 $$?="Topic:" 1,1t14,1"�1,14��6,14"�14,6��13,6"�6,13��15,13"�13,15��0,15"�15,0��
  .� Very nice gray � :topic $chan 14,15<16>14<16>14<16>14<16>14<16>1 $$?="Topic:" 14,15<16>14<16>14<16>14<16>14<16>
  .� Very nice blue � :topic $chan 12,10<11>12<11>12<11>12<11>12<11> $$?="Topic:" 12,10<11>12<11>12<11>12<11>12<11>
  .� ������������ with rainbow � :topic $chan 4,1�8,1�3,1�12,1�6,1�10�10�6,1�12,1�3,1�8,1�4,1�15,1 $$?="Topic:" 4,1�8,1�3,1�12,1�6,1�10�10�6,1�12,1�3,1�8,1�4,1�
  .�� gray ��:topic $chan 14,15�16�1 $$?="Topic:" 14,15�16�
 
 � FUN Talkers �
  .Show Colors:/echo These Are The Colors: | /echo 1,0 0 0,1 1 0,2 2 0,3 3 0,4 4 0,5 5 0,6 6 0,7 7 0,8 8 0,9 9 0,10 10 0,11 11 0,12 12 0,13 13 0,14 14 0,15 15  

  .� Colorful Talk �
  ..Rainbow 1:/r1 $$?="Text To Say?"
  ..Rainbow 2:/r2 $$?="Text To Say?"
  ..Rainbow (back):/rb $$?="Text To Say?"
  ..Ascii (colour):/asciic $$?="Text To Say?"
  ..Ascii (no colour):/ascii $$?="Text To Say?"
  .� Brick Colors �
  ..Black/Red:/brick1 $$?="Text To Say?"
  ..Grey/Brown:/brick2 $$?="Text To Say?"
  ..Blue/Aqua:/brick3 $$?="Text To Say?"
  ..Blue/Grey:brick4 $$?="Text To Say?"
  .'%%, Text '%%,
  ..Grey:{ banners '%%, 1 $$?="Enter Text" }
  ..Yellow:{ banners '%%, 2 $$?="Enter Text" }
  ..Green:{ banners '%%, 3 $$?="Enter Text" }
  ..Blue:{ banners '%%, 4 $$?="Enter Text" }
  ..Purple:{ banners '%%, 5 $$?="Enter Text" }
  .�� Text ��
  ..Grey:{ banners �� 1 $$?="Enter Text" }
  ..Yellow:{ banners �� 2 $$?="Enter Text" }
  ..Green:{ banners �� 3 $$?="Enter Text" }
  ..Blue:{ banners �� 4 $$?="Enter Text" }
  ..Purple:{ banners �� 5 $$?="Enter Text" }
  .<> Text <>
  ..Grey:{ banners <> 1 $$?="Enter Text" }
  ..Yellow:{ banners <> 2 $$?="Enter Text" }
  ..Green:{ banners <> 3 $$?="Enter Text" }
  ..Blue:{ banners <> 4 $$?="Enter Text" }
  ..Purple:{ banners <> 5 $$?="Enter Text" }
  .<< Text >>
  ..Grey:{ banners <<>> 1 $$?="Enter Text" }
  ..Yellow:{ banners <<>> 2 $$?="Enter Text" }
  ..Green:{ banners <<>> 3 $$?="Enter Text" }
  ..Blue:{ banners <<>> 4 $$?="Enter Text" }
  ..Purple:{ banners <<>> 5 $$?="Enter Text" }
  .() Text ()
  ..Grey:{ banners () 1 $$?="Enter Text" }
  ..Yellow:{ banners () 2 $$?="Enter Text" }
  ..Green:{ banners () 3 $$?="Enter Text" }
  ..Blue:{ banners () 4 $$?="Enter Text" }
  ..Purple:{ banners () 5 $$?="Enter Text" }
  .(( Text ))
  ..Grey:{ banners (()) 1 $$?="Enter Text" }
  ..Yellow:{ banners (()) 2 $$?="Enter Text" }
  ..Green:{ banners (()) 3 $$?="Enter Text" }
  ..Blue:{ banners (()) 4 $$?="Enter Text" }
  ..Purple:{ banners (()) 5 $$?="Enter Text" }
  .[] Text []
  ..Grey:{ banners [] 1 $$?="Enter Text" }
  ..Yellow:{ banners [] 2 $$?="Enter Text" }
  ..Green:{ banners [] 3 $$?="Enter Text" }
  ..Blue:{ banners [] 4 $$?="Enter Text" }
  ..Purple:{ banners [] 5 $$?="Enter Text" }
  .[[ Text ]]
  ..Grey:{ banners [[]] 1 $$?="Enter Text" }
  ..Yellow:{ banners [[]] 2 $$?="Enter Text" }
  ..Green:{ banners [[]] 3 $$?="Enter Text" }
  ..Blue:{ banners [[]] 4 $$?="Enter Text" }
  ..Purple:{ banners [[]] 5 $$?="Enter Text" }
  .!� Text !�
  ..Grey:{ banners !� 1 $$?="Enter Text" }
  ..Yellow:{ banners !� 2 $$?="Enter Text" }
  ..Green:{ banners !� 3 $$?="Enter Text" }
  ..Blue:{ banners !� 4 $$?="Enter Text" }
  ..Purple:{ banners !� 5 $$?="Enter Text" }
  ./\ Text /\
  ..Grey:{ banners \/ 1 $$?="Enter Text" }
  ..Yellow:{ banners \/ 2 $$?="Enter Text" }
  ..Green:{ banners \/ 3 $$?="Enter Text" }
  ..Blue:{ banners \/ 4 $$?="Enter Text" }
  ..Purple:{ banners \/ 5 $$?="Enter Text" }
-
}