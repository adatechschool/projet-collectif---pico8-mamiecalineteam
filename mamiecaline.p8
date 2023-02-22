pico-8 cartridge // http://www.pico-8.com
version 38
__lua__
--init

function _init()
	init_menu()
	scene="menu"
		
end

function _draw()
	
end

function _uptade()
	
end

function init_game()
			_uptade = uptade_game
		_draw = draw_game
end

-->8
--player
-->8
--dialogues
-->8
--map
-->8

-->8
--main menu
local current_screen = 1
local last_screen_flip_time = 0
local screen_flip_interval = 0.5

function mainmenu1()
    cls()
	map(32,0)
	print("press ❎ to",75,42,0)
    print("leave the house",65,50,0)
end

function mainmenu2()
    cls()
    map(48,0)
end

function init_menu()
	_update = uptade_menu
	_draw = draw_menu
end

function draw_menu()
	if current_screen == 1 then
    mainmenu1()
  else
    mainmenu2()
  end
end

function uptade_menu()
 if (time() - last_screen_flip_time) >= screen_flip_interval then
    current_screen = 3 - current_screen -- switch between 1 and 2
    last_screen_flip_time = time()
 end
 
 if btnp(❎) then 
		init_game()
	end

end
__gfx__
000000000007700000000000000077000000000000077000000000000007700000000000000770000000000000000000cccccccccccccccccccccccccccccccc
000000000007277777000000000072777770000000072777770004000007277777000000000727777700000000000000cccccccccccc21cccccccccccccccccc
007007000000777666600000000007766666000000007776666004000000777666600000000077766660000008800880ccccccccccc222cccccccccccccccccc
0007700000006666fff0000000000666ffff000000006666fff0040000006666fff0000400006666fff000008e888888cccccccccccc222ccc3ccccccccccccc
0007700000005662275000000000056f2276000000005662275004000000566227500004000056622750000088e88888ccccccccccccc2ccc3319ccccc111ccc
007007000000052ff220000000000052ff2200000000052ff22040000000052ff22000440000052ff220000008888880cccccccccccccccccc111ccccccccccc
00000000000000fffff000000000000fffff0000000000fffff04000000000fffff00040000000fffff000000088880033333333ccccccccccc11ccccccccccc
00000000000000effee00000000000eeffee0000000000effee04000000000effee00440000000effee0000000088000bbbbbbbbcccccccccccccccccccccccc
0000000000000eeeff00000000000eeeeff0000000000eeeff0ff00000000eeeff0ff40000000eeeff0ff40000066000b333b9b34033ffffcccccccccccccccc
0000000000002eeeeeeef00000002eeeeeeeef0000002eeeeeeef00000002eeeeeeef00000002eeeeeeef040000280003b73b33b40333fffccccc66ccccccccc
0000000000009aeeeeeff00000009aeeeeeeff0000009aeeeeee000000009aeeeeee000000009aeeeeee004000088000933b33b740333322cccc67cccccccccc
000000000000ccaaaaaa40000000ccaaaaaa04000000ccaaaaaa00000000ccaaaaaa00000000ccaaaaaa000400889800b3b3bb3b40111111ccc676cccccccccc
0000000000001ccc99aa040000001cc199aa040000001ccc99a0000000001ccc99a0000000001ccc99aa000400899800b33b33bb40e6e6e1c1666661cccccccc
00000000000001cc1cc00400000001cc1cc00400000001cc1cc00000000001cc1cc00000000001cc1cc000040009a0003bb3bb33ffe66eeecc11111ccccccccc
00000000000001c1c1c00400000001ccc1c00400000001c1c1c00000000001c1c1c00000000001c1c1c000000006600054242542f6696eeecccccccccccccccc
000000000000011cc22004000000001ccc2204000000011cc22000000000011cc22000000000011cc220000000556600454554546feae6eecccccccccccccccc
00000000bbbbbbbbbbbbbbbb766576659aaaaaaaaaaaaa90766576bbbbb57665cc4ccc6fff6cccccbbbbbbbbbbbbbbbb00000000000000000000000000000000
00000000bbbbbbabb8bbbbbb55565556aaaaaaaaaaaaa9905556555bb5565556c644c66fff66ccccbbbbbbbbbbbbbbbb00000000000000000000000000000000
00000000bbbbba7a898bbbbb66656665dddaaaaaaaaa999066656665b6656665c6c4c666f666ccccbb66ccbbbbbbbbbb00000000000000000000000000000000
00000000bbbbbbabb8bbbbbb7665766566cdaaaaaaa999907665766576657665c6c44f66666fccccbccccccbbb3b3bbb00000000000000000000000000000000
00000000bbbbbbbbbbbbbbbb555655566ccdaaaaaa9999905556555655565556c6cc4466f66cccccbccccc1bbbb3bbbb00000000000000000000000000000000
00000000b3b3bbbbbbbbb3bb66656665cc6daaaa666669906665666566656665c6ccc44fffccccccb011110bbbbbb3bb00000000000000000000000000000000
00000000bb3bbbbbbbbbbb3b7665766544444aa6ffff46907665766576657665161cc7177717ccccbb0000bbbbbbbbbb00000000000000000000000000000000
00000000bbbbbbbbbbbbbbbb555655564444aaa6ffff46905556555655565556c1cc771777177cccbbbbbbbbbbbbbbbb00000000000000000000000000000000
00000000bbbbbbbbbbbbbbbb76657665aaaaaa96ffff46907665766500000000cccc777171777cccbb898ebbbbbbbbbb00000000000000000000000000000000
00000000bbbbbb3bbbbbbb3b55565556aaa99996ffff46905556555600000000cccc777111777cccb87e79ebbbbbbbbb00000000000000000000000000000000
00000000bbbbbbbbbbbbbbbb6665666599999996f0ff46906665666500000000cccc771111177cccb38898ebbbbbbbbb00000000000000000000000000000000
00000000b3bbbbbbbb3bbbbb7665766523237396ffff46907665766500000000cccc41111111466c3b38a85bbb3b3bbb00000000000000000000000000000000
00000000bbbbbbbbbbb3bbbb55565556873a3700ffff400b5556555600000000ccc31444444463363b33b5bbbbb3bbbb00000000000000000000000000000000
00000000bbbbbb3bbbbbbb6666656665333333bb55555bbb6665666b00000000c33b11111111555d36bb5bbbbbbbbbbb00000000000000000000000000000000
00000000bbbbb3bbbbbbb556b6657665bbbbbbb5656565bb7665766b000000003bbbb111b1115ddd6665bbb3bbbbbbb300000000000000000000000000000000
00000000bbbbbbbbbbbbbbbbbbb65556bbbbbb565656565b55565bbb00000000bbbbbbbbbbbbbbbbb65bbb3bbbbbbb3b00000000000000000000000000000000
00000000077777777777777700000000000000000777777777777777000000000000000000777fffffffff77700000000000000000777fffffffff7770000000
000000007777767777777777770000000000000077777677777777777700000000000000776ffffffffffff67000000000000000776ffffffffffff670000000
000000077777666777777767777000000000000777776667777777677770000000000006666fffffffffffff6777700000000006666fffffffffffff67777000
00000067667666667677667766760000000000676676666676776677667600000000007665fff77777777fff666677000000007665fff77777777fff66667700
0000066667766666776666677667000000000666677666667766666776670000000006655ffff44444444fff55666600000006655ffff44444444fff55666600
000006766766655666666566776760000000067667666556666665667767600000006665fffffffffffffffff555667000006665fffffffffffffffff5556670
000066766766555566655556676660000000667667665555666555566766600000006655fff444444444444ff555667000006655fff444444444444ff5556670
00006677666555ffffff55566767660000006677666555ffffff55566767660000066555fffffffffffffffffff5666000066555fffffffffffffffffff56660
00066667766fffffffffff566666670000066667766fffffffffff566666670000066555fffffffffffffffffff5566000066555fffffffffffffffffff55660
0007666666fffeeeffeeefff666676000007666666fffeeeffeeefff6666760000066550f55555ffffff55555f05566000066550f55555ffffff55555f055660
000677666fffffffeeffffff66776600000677666fffffffeeffffff667766000006655f00000000ff00000000ff56600006655f00000000ff00000000ff5660
00066677fffffffffffffffff766670000066677fffffffffffffffff766670000066650ff777ff0000ff777ff0f566000066650ff777ff0000ff777ff0f5660
00077666ff0000ffffff0000f666760000077666ff0000ffffff0000f666760000066550ff101ff0ff0ff101ff0f560000066550ff101ff0ff0ff101ff0f5600
00066772f222222ffff222222f27660000066772f222222ffff222222f276600000065f0fff7fff0ff0fff7fff0f5600000065f0fff7fff0ff0fff7fff0f5600
000766622ff77ff2ff2ff77ff2266700000766622ff77ff2ff2ff77ff22667000000065f0f444f0f4ff0f444f0f550000000065f0f444f0f4ff0f444f0f55000
000676652f7107ff22ff7017f2567000000676652f7107ff22ff7017f25670000000077ff00000ff4fff000004f000000000077ff00000ff4fff000004f00000
000667fff2f77ff2ff2ff77f2fff6000000667fff2f77ff2ff2ff77f2fff60000000007f444ffff4ffffffff44f000000000007f444ffff4ffffffff44f00000
0000666ff2fffff2ff2fffff2ff660000000666ff2fffff2ff2fffff2ff660000000000744ffff4fffff4ffff40000000000000744ffff4fffff4ffff4000000
0000055ffe22222ffff22222eff600000000055ffe22222ffff22222eff60000000000004fffff54fff45fffff000000000000004fffff54fff45fffff000000
0000005fffeeeffffffffeeeff5500000000005fffeeeffffffffeeeff550000000000004ff44ff04440ff44ff400000000000004ff44ff04440ff44ff400000
00000055ffffffeffffefffff550000000000055ffffffeffffefffff5500000000000074f4fff0000000fff4f060000000000074f4fff0000000fff4f060000
0000005aaffffffeeeefffffaa5000000000005aaffffffeeeefffffaa500000000000674f4ff055555550ff4f067000000000674f4ff055555550ff4f067000
00000005afffffffffffffffa550000000000005afffffffffffffffa55000000000a6674ffff5fffffff54ff06670000000a6674ffff5600000654ff0667000
000000005ffff8ffffff8fff50000000000000005ffff88888888fff50000000000a96650f4ffff44444fffff0667700000a96650f4fff4777774ffff0667700
000000022fffff888888ffff20000000000000022ffffe600006efff2000000000a9666500f44ffffffffff4f66777a000a9666500f44ff44444fff4f66777a0
0000002222feffffeeffffef220000000000002222feffe7777effef220000000aa6666650ff44ffffff4444067777aa0aa6666650ff4fffffffff44067777aa
00000022e2ffeffffffffef22200000000000022e2ffeffeeeefffe22200000000a96666650ff444444444f0477777a000a96666650ff4fffffff4f0477777a0
0000ee2222fffeeffffeeff22e2ee0000000ee2222fffeffffffeef22e2ee000007a9666660ffff44444fff077777770007a9666660ff444fff444f077777770
00eeeee22e2ffffeeeefff22222eee0000eeeee22e2fffeffffeff22222eee00077d11666650ffff444ffff077777777077d11666650ff4444444ff077777777
00ee2eee2222feffffffef22eeee2ee000ee2eee2222fefeeeefff22eeee2ee0777d111166650ffffffff007777d1177777d111166650ff44444f007777d1177
ee2eee2ee2222feeffeef2222eeeee2eee2eee2ee2222feffffef2222eeeee2e777d11111d665555555556777dd11177777d11111d665555555556777dd11177
eeee2eeeee2e2fffeeff22e2eee2ee2eeeee2eeeee2e2ffeeeef22e2eee2ee2e777d11111dd6666555666777dd111177777d11111dd6666555666777dd111177
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111111111111111111111111111111111111111111111111111cccccccc8444444544444448cccccccccccccccc66666660333676667676776330066666
11111111111111111111111111111111111111111111111111111111ccc2cccc8844444544444488ccc2ccccccc2cccc6666660333366ff67767676333306666
119991111111aaa999999aaaaa9991111111aa119a1119999aaaa111cccccccca84444454444448acccccccccccccccc555555033336ffff6776776333330555
11199911111aaa1199999aaaaa199911111aaa119a1119999aaaa111cccccccc885555555555558acccccccccccccccc555555033336fffff677766330330555
1119999111aaaa119991111aaa19999111aaaa199aa11991111aa111cccccc2ca88444445444488acccccc666666cc2c5555550333322fff226227630b030555
111999991aaaaa119991111aaa1999991aaaaa11111119911111a111ccccccccaa844444544448aaccccc67767766ccc5555555033277222772ff26330330555
11199999aaaaaa119991111aaa199999aaaaaa199aa1199111111111c2cccccc9888444454448889c2cc6776777776cc00000000032072f2072ff67633300000
11199919aa1aaa1199999aaaaa199919aa1aaa199aa119911a111111cccccccc9aa8555555558aa900067667777777600000000003322fff22ff677633300000
11199911a11aaa1199999aaaaa199911a11aaa199aa119999a11111144444445a9a8444544448a9a9a9a9a9a80000000a98880004033ffeffff4667603304445
11199911111aaa119991111aaa199911111aaa199aa119999a11111144444445a9aa844544448a9a9a989a9a80800090a999800840333fffff4f6770b0304445
11199911111aaa119991111aaa199911111aaa199aa119911a11111144444445a99a844544488a9a9a9a9a9a880a0000a99980004033332244ff666303044445
11199911111aaa119991111aaa199911111aaa199aa119911111a11155555555aa9aa855558aa98aaa9a989a98000800aa99880040616111fff1133333055555
11199911111aaa119991111aaa199911111aaa199aa11991111aa11154444444a8a9a844588a99a9a99a9a99a9808000aa99998040e6eee1ff1ee13333044444
11199911111aaa119991111aff199911111aaa199aa119999aaaa111544444449aa9aa8458a89aa989aa9aa9a9880090aaa99988fe66eeee11eeee1300044444
1199991ffffffaa99991111afe999911111aaaa99aaa99999aaaa111544444449aaa9a848aa9aa9aa9a9a9a9aa980000aaaa9998f6e96eeeeee1ee10bb044444
111111feeeeeee1111111111fe11111111111111111111111111111155555555a9aa9aa88a9aaa9aa9a9a989aa980080aaaaa9986feae6eee11eee033b055555
11111fe11111ee1111111111fe111111111111111111111111111111aaaaa7aa00000808cc066665566660cc0000899a4444440604a94aff1eee113330444445
11111fe1111111111fffff11fe1ff111111111111111111111111111aaa7a7aa0a000008cc056665566660cc0088999a44444033309a449f1ee13bb030044445
11111fe111111111fe111ee1fe111111111111111111111111111111aaa777aa00008089cc066555555650cc0889999a44444030a9acccca911030b00b044445
11111fe111111111111111e1fe1fe1ff1fff111fffff111111111111aa7777aa00008089cc066665566660cc089999aa5555503a99accccccac033303b055555
11111ee111111111111111e1ee1fe1fe1eee11feeeeee11111111111aa7777aa00000899cc0555655655502c88999aaa54444409aaccccccc9cc00033b044444
11111ee11111111111eee1e1ee1fe1fee11ee1fe1111e11111111111a777777a0008089acc066665566660cc8899aaaa544444a99cccccccccacc1303b044444
11111ee1111111111feeeee1ee1fe1fe111ee1ee11ee111111111111a777777a000089aac2055665556660cc899aaaaa544444a9accccccccc9cc1303b044444
11111ee111111fe1fe111ee1ee1ee1ee111ee1eeee11111111111111a777777a000089aacc066655566650cc89aaaaaa55555a9a9cccccccccacc13033b05555
11111ee111111ee1ee1111e1ee1ee1ee111ee1ee1111f11111111111111111111111111144066666666666666666604544444a9a9cccccccccc9c133033b0045
11bb11eeeeeeee11ee1111e1ee1ee1ee111ee11eeeeee1111111111111111111111111114006666666666666666660054444a9a9ccccccccccc9c1330333b045
1bbbb11eeeeee1111eeeeee1ee1ee1ee111ee11eeeee111111111111111111111111111140555555555555555555550544aa9aa9cccccccccccca13aa0003045
1b11b111111b1bbb111b111b1b111bbb111bbb1b11111111111b1bbb111b1111111111115055555555555555555555055599999511111111111119a9a9330555
1b11b111111b1111b11b11111bbb1b1b111b111111b1b11b1b1b1111b11b111bbb1b111150555555555555555555550454aa9a4222204222204000aa9a004444
1bbbb111bbbb11bbb1bbbb1b1b1b1bbb111bbb1b1b1b1b1b1b1b11bbb1bbbb1b1b1bbb11505555555555555555555504544444400004400004444449a4444444
13113111b11b1b11b11b111b1b1b111b11111b1b1b1b1b1b1b1b1b11b11b111b1b1b1b1150000000000000000000000454444444544444445444444454444444
33113311333311331113331313131333111333131313131333131133111333133313111150000000000000000000000555555555555555555555555555555555
__label__
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888eeeeee888eeeeee888eeeeee888eeeeee888eeeeee888777777888888888888888888888888888ff8ff8888228822888222822888888822888888228888
8888ee888ee88ee88eee88ee888ee88ee888ee88ee8e8ee88778887788888888888888888888888888ff888ff888222222888222822888882282888888222888
888eee8e8ee8eeee8eee8eeeee8ee8eeeee8ee8eee8e8ee87778777788888e88888888888888888888ff888ff888282282888222888888228882888888288888
888eee8e8ee8eeee8eee8eee888ee8eeee88ee8eee888ee8777888778888eee8888888888888888888ff888ff888222222888888222888228882888822288888
888eee8e8ee8eeee8eee8eee8eeee8eeeee8ee8eeeee8ee87777787788888e88888888888888888888ff888ff888822228888228222888882282888222288888
888eee888ee8eee888ee8eee888ee8eee888ee8eeeee8ee877788877888888888888888888888888888ff8ff8888828828888228222888888822888222888888
888eeeeeeee8eeeeeeee8eeeeeeee8eeeeeeee8eeeeeeee877777777888888888888888888888888888888888888888888888888888888888888888888888888
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111ddd1ddd1ddd1dd111111ddd1ddd1dd11d1d111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111ddd1d1d11d11d1d11111ddd1d111d1d1d1d111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1ddd1ddd1d1d1ddd11d11d1d11111d1d1dd11d1d1d1d111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111d1d1d1d11d11d1d11111d1d1d111d1d1d1d111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111d1d1d1d1ddd1d1d11111d1d1ddd1d1d11dd111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1ee111ee1eee1eee11ee1ee1111116661661166616661111166616661661161611711171111111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111111611616116111611111166616111616161617111117111111111111111111111111111111111111111111111111
1ee11e1e1e1e1e1111e111e11e1e1e1e111111611616116111611111161616611616161617111117111111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111111611616116111611111161616111616161617111117111111111111111111111111111111111111111111111111
1e1111ee1e1e11ee11e11eee1ee11e1e111116661616166611611666161616661616116611711171111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111161616661661166616661666111111111111161616661666166616611666111116661666166116161111111111111111111111111111111111111111
11111111161616161616161611611611111117771111161616161161161616161611111116661611161616161111111111111111111111111111111111111111
11111111161616661616166611611661111111111111161616661161166616161661111116161661161616161111111111111111111111111111111111111111
11111111161616111616161611611611111117771111161616111161161616161611111116161611161616161111111111111111111111111111111111111111
11111666116616111666161611611666111111111111116616111161161616661666166616161666161611661111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111166116661666161611111111111116611666166616161111166616661661161611111111111111111111111111111111111111111111111111111111
11111111161616161616161611111777111116161616161616161111166616111616161611111111111111111111111111111111111111111111111111111111
11111111161616611666161611111111111116161661166616161111161616611616161611111111111111111111111111111111111111111111111111111111
11111111161616161616166611111777111116161616161616661111161616111616161611111111111111111111111111111111111111111111111111111111
11111666166616161616166611111111111116661616161616661666161616661616116611111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1ee11ee111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1ee11e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1eee11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1ee111ee1eee1eee11ee1ee1111116611666166616161111166616661661161611711171111111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111116161616161616161111166616111616161617111117111111111111111111111111111111111111111111111111
1ee11e1e1e1e1e1111e111e11e1e1e1e111116161661166616161111161616611616161617111117111111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111116161616161616661111161616111616161617111117111111111111111111111111111111111111111111111111
1e1111ee1e1e11ee11e11eee1ee11e1e111116661616161616661666161616661616116611711171111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111bb1b1111bb1171117111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111b111b111b111711111711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111b111b111bbb1711111711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111b111b11111b1711111711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111bb1bbb1bb11171117111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111bbb1bbb1bbb11711ccc1ccc11111ccc11711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111bbb1b1b1b1b1711111c111c11111c1c11171111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111b1b1bbb1bbb171111cc1ccc11111c1c11171111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111b1b1b1b1b111711111c1c1111711c1c11171111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111b1b1b1b1b1111711ccc1ccc17111ccc11711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111bbb1bbb1bbb1bb11bbb11711c1c1ccc1ccc1ccc11cc11cc111111ccccc111111ccc11cc1c1c111111111c1c1ccc11111ccc117111111111111111111111
11111b1b1b1b11b11b1b11b117111c1c1c1c1c1c1c111c111c1111111cc1c1cc111111c11c1c1c1c111111111c1c1c1c11111c1c111711111111111111111111
11111bbb1bb111b11b1b11b1171111111ccc1cc11cc11ccc1ccc11111ccc1ccc111111c11c1c1111111111111ccc1c1c11111c1c111711111111111111111111
11111b111b1b11b11b1b11b1171111111c111c1c1c11111c111c11111cc1c1cc111111c11c1c111111711171111c1c1c11711c1c111711111111111111111111
11111b111b1b1bbb1b1b11b1117111111c111c1c1ccc1cc11cc1111111ccccc1111111c11cc1111117111711111c1ccc17111ccc117111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111bbb1bbb1bbb1bb11bbb11711c1c1c111ccc1ccc1c1c1ccc11111ccc1c1c1ccc11111c1c11cc1c1c11cc1ccc1c1c11111c1c1ccc11111c111ccc11111ccc
11111b1b1b1b11b11b1b11b117111c1c1c111c111c1c1c1c1c11111111c11c1c1c1111111c1c1c1c1c1c1c111c111c1c11111c1c1c1111111c11111c11111c1c
11111bbb1bb111b11b1b11b1171111111c111cc11ccc1c1c1cc1111111c11ccc1cc111111ccc1c1c1c1c1ccc1cc1111111111ccc1ccc11111ccc111c11111c1c
11111b111b1b11b11b1b11b1171111111c111c111c1c1ccc1c11111111c11c1c1c1111111c1c1c1c1c1c111c1c1111111171111c111c11711c1c111c11711c1c
11111b111b1b1bbb1b1b11b1117111111ccc1ccc1c1c11c11ccc111111c11c1c1ccc11111c1c1cc111cc1cc11ccc11111711111c1ccc17111ccc111c17111ccc
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111eee1e1e1ee111ee1eee1eee11ee1ee111111166166611661666116611661666166116661166117111711111111111111111111111111111111111111111
11111e111e1e1e1e1e1111e111e11e1e1e1e11111611161616161161161116111616161611611611171111171111111111111111111111111111111111111111
11111ee11e1e1e1e1e1111e111e11e1e1e1e11111611166116161161166616661666161611611666171111171111111111111111111111111111111111111111
11111e111e1e1e1e1e1111e111e11e1e1e1e11111611161616161161111611161616161611611116171111171111111111111111111111111111111111111111
11111e1111ee1e1e11ee11e11eee1ee11e1e11111166161616611666166116611616161611611661117111711111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111eee1eee1111166616661166111116611666161616661661166611111666116616611111166611661171117111111eee1e1e1eee1ee1111111111111
1111111111e11e1111111616161616111111161616111616161616161161111116661616161611111616161117111117111111e11e1e1e111e1e111111111111
1111111111e11ee111111666166616661111161616611616166616161161111116161616161611111666161117111117111111e11eee1ee11e1e111111111111
1111111111e11e1111111611161611161111161616111666161616161161111116161616161611111611161117111117111111e11e1e1e111e1e111111111111
111111111eee1e1111111611161616611666166616661161161616161161166616161661161616661611116611711171111111e11e1e1eee1e1e111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111661666116616661166116616661661166611661111166611661616166611111666116616161666111116111666111116661166166116611666
11111111111116111616161611611611161116161616116116111111161616161616161611111161161616161161111116111611111116661616161616161611
11111111111116111661161611611666166616661616116116661111166616161616166111111161161616161161111116111661111116161616161616161661
11111111111116111616161611611116111616161616116111161111161116161616161611111161161616161161111116111611111116161616161616161611
11111111111111661616166116661661166116161616116116611666161116611166161616661161166111661161166616661666166616161661161616661666
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111eee1ee11ee1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111e111e1e1e1e111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111ee11e1e1e1e111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111e111e1e1e1e111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111eee1e1e1eee111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111eee1ee11ee11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111e111e1e1e1e1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111ee11e1e1e1e1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111e111e1e1e1e1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111eee1e1e1eee1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
82888222822882228888822882288882822282228888888888888888888888888888888888888888888888888888822282288882822282288222822288866688
82888828828282888888882888288828888288828888888888888888888888888888888888888888888888888888888288288828828288288282888288888888
82888828828282288888882888288828882282228888888888888888888888888888888888888888888888888888888288288828822288288222822288822288
82888828828282888888882888288828888282888888888888888888888888888888888888888888888888888888888288288828828288288882828888888888
82228222828282228888822282228288822282228888888888888888888888888888888888888888888888888888888282228288822282228882822288822288
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888

__map__
24251c1c1c1c1f1f1f0f1f1f0f1f1f1f31313131313131313132323131313131e6c0c1c2c3c4c5c6e6e6e6c7c7c7c7c7e6c0c1c2c3c4c5c6e6e6e6c7c7c7c7c700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
34353122211c0f1f1e1f1f1f1f1f0e1f31313131313131313131313131313131e6d0d1d2d3d4d5d6e6e6e6c7c7c7c7c7e6d0d1d2d3d4d5d6e6e6e6c7c7c7c7c700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
23263131311c0c0c0e1f1f28291f1f0f31313131313131313131313131313131e6e0e1e2e3e4e5e6e6e6e6c7c7c7c7c7e6e0e1e2e3e4e5e6e6e6e6c7c7c7c7c700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
31233132311c1c1c0c0c0c38390c0c0c31313131313131313131313131313131e6f0f1f2f3f4f5f6f7f8e6c7c7c7c7c7e6f0f1f2f3f4f5f6f7f8e6c7c7c7c7c700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2223212231272326212231313221313131313131313131313131313131313131e6e6e6e6e6e6e6e6e6e6e6c7c7c7c7c7e6e6e6e6e6e6e6e6e6e6e6c7c7c7c7c700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3233232323363223313a21322723232331313131313131313131313131313131c7fafafafafafafac7c7c7c7c7c7c7c7c7fafafafafafafac7c7c7c7c7c7c7c700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
32322a3131222223313231312331313131313131313131313131313131313131c7e9fafafafafaeac7c7c7c7c7c7c7c7c7e9fafafafafaeac7c7c7c7c7c7c7c700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131222233232323233631313131313131313131313131313131313131c7e937e8dadb37eac7c7cacbc7c7c7c7c7e937dbdae837eac7c7cacbc7c7c7c700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131313131313131313131313131313131313131313131313131313131fae937ebe7dc37eafacccdcecffafafafae937ebe7dc37eafacccdcecffafafa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131313131313131313131313131313131313131313131313131313131d7f9fafafafafafbd7d7dddedfd7d7d7d7f9fafafafafafbd7d71ddedfd7d7d700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131313131313131313131313131313131313131313131313131313131d7d7d7d7d7d7d7d7d7ecedeeefd7d7d7d7d7d7d7d7d7d7d7d7ecedeeefd7d7d700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131313131313131313131313131313131313131313131313131313131d7d9dadadadadad8d7fcfdfeffd7d7d7d7d9dadadadadad8d7fcfdfeffd7d7d700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131313131313131313131313131313131313131313131313131313131c9dadadadadadadac8d7d7d7d7d7d7d7c9dadadadadadadac8d7d7d7d7d7d7d700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
011100200c0433f20024600246152461524600246153f3000c043246152460024615246002461524615246000c043246002460024615246150000024615246000c04324615246002461524600246152461524600
010d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
00 01424344

