prolog './g200.ijs'
NB. ^y ------------------------------------------------------------------

x =: 0.001 * _900+?4 5$2000
y =: 0.001 * _900+?4 5$2000
a =: x j. (*y)*(o.1)|y
a =: a,0,*/\4$0j1

exp=: (%!i._50) & (+/ .*) @ ((i._50)&(^~/))

5e_13 > | (^a)%~(^a)-exp a
a =!.5e_13 ^.^a
a =!.5e_13 ^^.a

1                      -: ^ 0
2.71828182845904523536 -: ^ 1
7.38905609893065022723 -: ^ 2
148.4131591025766      -: ^ 5

rou =: [:^ 0j2p1&% * i.    NB. roots of unity
([: */ 1: = rou ^ ])"0 i.4 5

0  < ^ _744.01  NB. _1074*^.2   - changed from _744.44 in new processor
0  = ^ _744.441
_  > ^  709.782  NB.  1024*^.2
_  = ^  709.783

0 = ^ __
0 = ^ __j5 __j_5

'domain error' -: ^ etx 'abc'
'domain error' -: ^ etx <'abc'
'domain error' -: ^ etx u:'abc'
'domain error' -: ^ etx <u:'abc'
'domain error' -: ^ etx 10&u:'abc'
'domain error' -: ^ etx <10&u:'abc'
'domain error' -: ^ etx s:@<"0 'abc'
'domain error' -: ^ etx s:@<"0&.> <'abc'
'domain error' -: ^ etx <"0@s: <'abc'

0 = ^_744.441j2e9
0 = ^_744.441j_2e9

'limit error' -: ^ etx _744.440j2e9
'limit error' -: ^ etx _744.440j_2e9

(j./        ^710+^. 2 1 o.0.01) = ^ 710j0.01
(j./        ^710+^. 2 1 o.1.57) = ^ 710j1.57
(j./_1  1 * ^710+^.|2 1 o.1.58) = ^ 710j1.58
(j./_1 _1 * ^710+^.|2 1 o.4.71) = ^ 710j4.71
(j./ 1 _1 * ^710+^. 2 1 o.1.57) = ^ 710j_1.57
(j./ 1 _1 * ^710+^. 2 1 o.0.01) = ^ 710j_0.01


NB. x^y -----------------------------------------------------------------

pow =: ^.@[ ^@* ]

(x=:x+0=x=:_50+?4$100)      (^-:pow) y=:        _50+?4 10$100
(x=:x+0=x=:_50+?4 10 2$100) (^-:pow) y=:   0.02*_50+?4 10$100
(x=:x+0=x=:o._50+?4 10$100) (^-:pow) y=:o. 0.01*_50+?4 10$100
(x=:x+0=x=:r./_50+?2 4$100) (^-:pow) y=:j./0.01*_50+?2 4 10$100

(a^ i.30) -: */\1,29$ a=: 2
(a^-i.30) -: */\1,29$%a=: 2
(a^ i.30) -: */\1,29$ a=:_2
(a^-i.30) -: */\1,29$%a=:_2
(a^ i.30) -: */\1,29$ a=: 2.45
(a^-i.30) -: */\1,29$%a=: 2.45
(a^ i.30) -: */\1,29$ a=:_2.45
(a^-i.30) -: */\1,29$%a=:_2.45
(a^ i.30) -: */\1,29$ a=: 2j1.6
(a^-i.30) -: */\1,29$%a=: 2j1.6
(a^ i.30) -: */\1,29$ a=: 2j_1.6
(a^-i.30) -: */\1,29$%a=: 2j_1.6
(a^ i.30) -: */\1,29$ a=:_2j1.6
(a^-i.30) -: */\1,29$%a=:_2j1.6
(a^ i.30) -: */\1,29$ a=:_2j_1.6
(a^-i.30) -: */\1,29$%a=:_2j_1.6

a -: a^1 [ a=: ?20$2e9
a -: a^1 [ a=:-?20$2e9
a -: a^1 [ a=:o._1e9+?20$2e9
a -: a^1 [ a=:j./_1e9+?2 20$2e9

(20$1) -: a^0 [ a=: ?20$2e9
(20$1) -: a^0 [ a=:-?20$2e9
(20$1) -: a^0 [ a=:o._1e9+?20$2e9
(20$1) -: a^0 [ a=:r./_1e7+?2 20$2e7

1 0 1 1 -: 0 0 1 1 ^ 0 1 0 1

1     -: 0^0
(9$1) -: (-:_5+i.9)^0

_ _ _ _ 1 0 0 0 0 -: 0        ^ _4+i.9
_ _ _ _ 1 0 0 0 0 -: ({.0 4  )^ _4+i.9
_ _ _ _ 1 0 0 0 0 -: ({.0 4.5)^ _4+i.9
_ _ _ _ 1 0 0 0 0 -: ({.0 4j5)^ _4+i.9

_ _ _ _ 1 0 0 0 0 -: 0        ^ -:_4+i.9
_ _ _ _ 1 0 0 0 0 -: ({.0 4  )^ -:_4+i.9
_ _ _ _ 1 0 0 0 0 -: ({.0 4.5)^ -:_4+i.9
_ _ _ _ 1 0 0 0 0 -: ({.0 4j5)^ -:_4+i.9

_ _ _ _ 1 0 0 0 0 -: 0        ^ }. 0j1, -:_4+i.9
_ _ _ _ 1 0 0 0 0 -: ({.0 4  )^ }. 0j1, -:_4+i.9
_ _ _ _ 1 0 0 0 0 -: ({.0 4.5)^ }. 0j1, -:_4+i.9
_ _ _ _ 1 0 0 0 0 -: ({.0 4j5)^ }. 0j1, -:_4+i.9

a=:1.41421356237309504880
a       -:     2   ^ 0.5
(%a)    -:     2   ^_0.5
(%a)    -:     0.5 ^ 0.5
a       -:     0.5 ^_0.5
(0,  a) -: +. _2   ^ 0.5
(0,%-a) -: +. _2   ^_0.5
(0,% a) -: +. _0.5 ^ 0.5
(0, -a) -: +. _0.5 ^_0.5
'length error' -: 1 2 3 ^ etx ,0.5

1.25992104989487316476 -: 2^%3

x=: j./_50+2 30 ?@$ 100
n=: 30 ?@$ 50
x (^ -: pow)  n
x (^ -: pow) -n

'domain error' -: 3   ^ etx 'abc'
'domain error' -: 3   ^~etx 'abc'
'domain error' -: 3   ^ etx u:'abc'
'domain error' -: 3   ^~etx u:'abc'
'domain error' -: 3   ^ etx 10&u:'abc'
'domain error' -: 3   ^~etx 10&u:'abc'
'domain error' -: 3   ^ etx s:@<"0 'abc'
'domain error' -: 3   ^~etx s:@<"0 'abc'
'domain error' -: 2   ^ etx 2;4 5
'domain error' -: 2   ^~etx 2;4 5

'length error' -: 2 3 ^ etx 4 5 6
'length error' -: 2 3 ^~etx 4 5 6
'length error' -: 2 3 ^ etx i.4 5
'length error' -: 2 3 ^~etx i.4 5


NB. x^0 -----------------------------------------------------------------

e.&'1 ' ": x ^ 0 [ x=: ?200$2
e.&'1 ' ": x ^ 0 [ x=: _5e6+?200$1e7
e.&'1 ' ": x ^ 0 [ x=: 0.001*_5e6+?200$1e7
e.&'1 ' ": x ^ 0 [ x=: j./0.001*_5e6+?2 200$1e7


NB. 0^y -----------------------------------------------------------------

e.&'0 ' ": 0       ^     10$1
e.&'0 ' ": 0       ^     1+?10$1e6
e.&'0 ' ": 0       ^ 0.1*1+?10$2e9
e.&'0 ' ": 0       ^ j./ 1+?2 10$2e3

e.&'0 ' ": (2-2)   ^     10$1
e.&'0 ' ": (2-2)   ^     1+?10$1e6
e.&'0 ' ": (2-2)   ^ 0.1*1+?10$2e9
e.&'0 ' ": (2-2)   ^ j./ 1+?2 10$2e3

e.&'0 ' ": (o.0)   ^     10$1
e.&'0 ' ": (o.0)   ^     1+?10$1e6
e.&'0 ' ": (o.0)   ^ 0.1*1+?10$2e9
e.&'0 ' ": (o.0)   ^ j./ 1+?2 10$2e3

e.&'0 ' ": (-~2j1) ^     10$1
e.&'0 ' ": (-~2j1) ^     1+?10$1e6
e.&'0 ' ": (-~2j1) ^ 0.1*1+?10$2e9
e.&'0 ' ": (-~2j1) ^ j./ 1+?2 10$2e3

(,'_') -: ": 0^_5 
(,'_') -: ": 0^_5.4

(,'0') -: ": 0^3j4 
'_ _ 0 0 0 0 0 0' -: ": 0^_3 _1 0j3 0j_3 3j4 3j_4 _3j4 _3j_4

NB. 2^y -----------------------------------------------------------------

1 2 128 _ -: 2^0 1 7 1024
_ = 2^1e15  NB. on 32-bit, this is a float constant
8.988465674311579538646525953945e307 -: 2 ^ 1023
0.5 0.25 0.0078125 -: 2^_1 _2 _7
0 ~: 2 ^ _1074
0 -: 2 ^ _1075

NB. <.@(2&^.) and >.@(2&^.) ---------------------------------------------

NB. Integers.
(30 $ 0) -: (>.@(2&^.) - <.@(2&^.)) 2 <.@^ i. 30
(30 $ 0) -: (>.@(2&^.) - <.@(2&^.)) 2 ^ i. 30
0 1 1 2 2 2 2 3 3 3 -: <.@(2&^.) >: i. 10
0 1 2 2 3 3 3 3 4 4 -: >.@(2&^.) >: i. 10
49 53 56 -: <.@(2&^.) 1e15 1e16 1e17
50 54 57 -: >.@(2&^.) 1e15 1e16 1e17

NB. Basic floats.
0 1 1 2 3 3 6 -: <.@(2&^.) 1.1 2.3 3.4 7.8 8 8.0635 100.1921
1 2 2 3 3 4 7 -: >.@(2&^.) 1.1 2.3 3.4 7.8 8 8.0635 100.1921
(i. 10) -: <.@(2&^.) 2 ^ i. 10
(i. 10) -: >.@(2&^.) 2 ^ i. 10
(- i. 10) -: <.@(2&^.) 2 ^ - i. 10
(- i. 10) -: >.@(2&^.) 2 ^ - i. 10
1021 1022 1023 -: <.@(2&^.) 2 ^ 1021 1022 1023
1021 1022 1023 -: >.@(2&^.) 2 ^ 1021 1022 1023
_1072 _1073 _1074 -: <.@(2&^.) 2 ^ _1072 _1073 _1074
_1072 _1073 _1074 -: >.@(2&^.) 2 ^ _1072 _1073 _1074
_1050 -: <.@(2&^.) +/ ] 2 ^ _1050 _1054 _1070
_1049 -: >.@(2&^.) +/ ] 2 ^ _1050 _1054 _1070
'complex' -: datatype <.@(2&^.) _.
'complex' -: datatype >.@(2&^.) _.
_ -: <.@(2&^.) _
_ -: >.@(2&^.) _
__ -: <.@(2&^.) 0
__ -: >.@(2&^.) 0
1 1 0j4 -: <.@(2&^.) 2 3.4 _1
1 2 0j5 -: >.@(2&^.) 2 3.4 _1
NB. Normalized & tolerant floor.
11 11 12 12 -: <.!.(2^_34)@(2&^.) -&1e_5 1e_6 1e_7 1e_8 ] 2 ^ 12
11 12 12 -: <.@(2&^.) -&1e_9 1e_10 1e_11 ] 2 ^ 12
(4 # 11) -: <.!.0@(2&^.) -&1e_6 1e_8 1e_10 1e_12 ] 2 ^ 12
11 12 -: <.!.(1e_12)@(2&^.) -&1e_8 1e_9 ] 2 ^ 12
50 49 -: <.!.(1e_12)@(2&^.) -&1125 1126 ] 2 ^ 50
1022 1023 -: <.!.(5e_11)@(2&^.) -&1e298 1e297 ] 2 ^ 1023
_101 _100 -: <.!.(3e_11)@(2&^.) -&1e_40 1e_41 ] 2 ^ _100
_1001 _1000 -: <.!.(3e_11)@(2&^.) -&1e_311 1e_312 ] 2 ^ _1000
_1022 _1021 -: <.!.(2e_11)@(2&^.) -&1e_318 1e_319 ] 2 ^ _1021
NB. Denorms & tolerant floor.
_1023 _1022 -: <.!.(3e_11)@(2&^.) -&1e_318 1e_319 ] 2 ^ _1022
_1051 _1050 -: <.!.(3e_11)@(2&^.) -&1e_323 0 ] 2 ^ _1050
_1031 _1030 -: <.!.(2e_11)@(2&^.) -&1e_320 1e_321 ] 2 ^ _1030
_1031 _1031 -: <.@(2&^.) -&1e_320 1e_321 ] 2 ^ _1030
_1071 _1070 -: <.@(2&^.) -&1e_323 0 ] 2 ^ _1070
NB. Normalized & tolerant ceiling.
13 12 12 -: >.!.(2^_34)@(2&^.) +&1e_6 1e_7 1e_8 ] 2 ^ 12
13 13 12 12 -: >.@(2&^.) +&1e_8 1e_9 1e_10 1e_11 ] 2 ^ 12
(4 # 13) -: >.!.0@(2&^.) +&1e_8 1e_9 1e_10 1e_11 ] 2 ^ 12
13 12 -: >.!.(1e_12)@(2&^.) +&1e_8 1e_9 ] 2 ^ 12
50 51 -: >.!.(1e_12)@(2&^.) +&1126 1127 ] 2 ^ 50
0 =  >.@(2&^.) 1.0
0 =  >.@(2&^.) 1. + (2^_46)
0 =  >.@(2&^.) 1. + (2^_46) + (2^_50)
1 =  >.@(2&^.) 1. + (2^_43)
1 =  >.@(2&^.) 1. + (2^_43)
1024 1023 -: >.!.(5e_11)@(2&^.) +&1e298 1e297 ] 2 ^ 1023
_99 _100 -: >.!.(3e_11)@(2&^.) +&1e_40 1e_41 ] 2 ^ _100
_999 _1000 -: >.!.(3e_11)@(2&^.) +&1e_311 1e_312 ] 2 ^ _1000
_1021 _1022 -: >.!.(2e_11)@(2&^.) +&1e_318 1e_319 ] 2 ^ _1022
NB. Denorms & tolerant ceiling.
_1022 _1023 -: >.!.(2e_11)@(2&^.) +&1e_318 1e_319 ] 2 ^ _1023
_1022 _1022 -: >.!.0@(2&^.) +&1e_318 1e_319 ] 2 ^ _1023
_1069 _1070 -: >.@(2&^.) +&1e_323 0 ] 2 ^ _1070

NB. 0^0 -----------------------------------------------------------------

(,'1') -: ": ^~0
(,'1') -: ": ^~-~2
(,'1') -: ": ^~-~2.5
(,'1') -: ": ^~-~2j5


NB. x^0.5 ---------------------------------------------------------------

x         -: *~ x^0.5 [ x=:?2000$2
(%:x)     -: x^0.5
(j.x^0.5) -: (-x)^0.5

x         -: *~ x^0.5 [ x=:?2000$10000
(%:x)     -: x^0.5
(j.x^0.5) -: (-x)^0.5

x         -: *~ x^0.5 [ x=:0.01*?2000$10000
(%:x)     -: x^0.5
(j.x^0.5) -: (-x)^0.5

x         -: *~ x^0.5 [ x=:j./0.01*_5000+?2 2000$10000
(%:x)     -: x^0.5

(2 ^ 0.5j1) -: (2^0.5)*(2^0j1)
THRESHOLD +. ((10) 6!:2 '0.50000001 ^~ i. 1000000') > 1.5 * ((10) 6!:2 '0.5 ^~ i. 1000000')  NB. Verify ^0.5 changed to %:

NB. x ^!.s y ------------------------------------------------------------

(3  ^!.4  [ 6) -: */3+4*i.6
(3j4^!._1 [ 6) -: */3j4-i.6

f =: 4 : '*/x+(i.y)*/s'

(12 ^!.s 6) -: 12 f 6 [ s=:1.5
(12 ^!.s 6) -: 12 f 6 [ s=:1
(12 ^!.s 6) -: 12 f 6 [ s=:_1

'valence error'  -:  ^!.4 etx 5
'domain error'  -: 3^!.4 etx 5.6
'domain error'  -: ex '^!.''a'''
'domain error'  -: ex '^!.(<4) '


NB. x m&|@^ y -----------------------------------------------------------

1 = 0  (0&|@^) 0
1 = 0  (0&|@^) 00
1 = 0  (00&|@^) 0
1 = 0  (00&|@^) 00
1 = 00  (0&|@^) 0
1 = 00  (0&|@^) 00
1 = 00  (00&|@^) 0
1 = 00  (00&|@^) 00

0 = 00  (1&|@^) 0
0 = 00  (1&|@^) 00
0 = 00  (01&|@^) 0
0 = 00  (01&|@^) 00
0 = 00  (01&|@^) 1
0 = 00  (01&|@^) 01

1 = 00  (2&|@^) 0
1 = 00  (2&|@^) 00
0 = 00  (2&|@^) 1
0 = 00  (2&|@^) 01

0 = 00  (1x&|@^) 0
0 = 00  (1x&|@^) 00
0 = 00  (1x&|@^) 1
0 = 00  (1x&|@^) 01
0 = 0x  (1&|@^) 0
0 = 0x  (1&|@^) 00
0 = 0x  (1&|@^) 1
0 = 0x  (1&|@^) 01
1 = 00  (0x&|@^) 0
1 = 00  (0x&|@^) 00
0 = 00  (0x&|@^) 1
0 = 00  (0x&|@^) 01
1 = 0x  (0&|@^) 0
1 = 0x  (0&|@^) 00
0 = 0x  (0&|@^) 1
0 = 0x  (0&|@^) 01

0 = 2  (1&|@^) 0
0 = 2  (1&|@^) 00
0 = 2  (1&|@^) 1
0 = 2  (1&|@^) 01
0 = 2  (01&|@^) 0
0 = 2  (01&|@^) 00
0 = 2  (01&|@^) 1
0 = 2  (01&|@^) 01

0 = 2  (01&|@^) 1+1e9
0 = 2  (01&|@^) 2+1e9
0 = 2  (01&|@^) 3+1e9

'NaN error' -: 2  (1&|@^) etx 1+1e9

6 = 2  (10&|@^)   1e9
2 = 2  (10&|@^) 1+1e9
4 = 2  (10&|@^) 2+1e9
8 = 2  (10&|@^) 3+1e9

6 = 2x (10&|@^)   1e9
2 = 2x (10&|@^) 1+1e9
4 = 2x (10&|@^) 2+1e9
8 = 2x (10&|@^) 3+1e9

6 = 2  (10&|@^)   10^40x
2 = 2  (10&|@^) 1+10^40x
4 = 2  (10&|@^) 2+10^40x
8 = 2  (10&|@^) 3+10^40x

6 = 2x (10&|@^)   10^40x
2 = 2x (10&|@^) 1+10^40x
4 = 2x (10&|@^) 2+10^40x
8 = 2x (10&|@^) 3+10^40x

6 = 10&|@(2 &^)   1e9
2 = 10&|@(2 &^) 1+1e9
4 = 10&|@(2 &^) 2+1e9
8 = 10&|@(2 &^) 3+1e9

6 = 10&|@(2x&^)   1e9
2 = 10&|@(2x&^) 1+1e9
4 = 10&|@(2x&^) 2+1e9
8 = 10&|@(2x&^) 3+1e9

6 = 10&|@(2 &^)   10^40x
2 = 10&|@(2 &^) 1+10^40x
4 = 10&|@(2 &^) 2+10^40x
8 = 10&|@(2 &^) 3+10^40x

6 = 10&|@(2x&^)   10^40x
2 = 10&|@(2x&^) 1+10^40x
4 = 10&|@(2x&^) 2+10^40x
8 = 10&|@(2x&^) 3+10^40x

f=: 3 : 0
 assert. 2     (y&|@^ -: y&|@^&x:) 10000
 assert. 3     (y&|@^ -: y&|@^&x:) 10000
 assert. 5     (y&|@^ -: y&|@^&x:) 10000
 assert. 64    (y&|@^ -: y&|@^&x:) 10000
 assert. 17393 (y&|@^ -: y&|@^&x:) 10000
 1
)

f 1e9
f"0 (i. 3)+<.%:<:2^IF64{31 63
f"0 (i:2)+<.%:<:2^53
f"0 i. 1000
f"0 (-i. 1000) + <.%:<:2^IF64{31 63

x=: 7700892415753674751x
1 = 2 x&|@^ -:x-1

(3   (17 &|)@^ 9.5) -: 17|3  ^9.5
(3   (17x&|)@^ 9.5) -: 17|3  ^9.5
(3.7 (17 &|)@^ 9  ) -: 17|3.7^9
(3.7 (17x&|)@^ 9  ) -: 17|3.7^9

h=: 7927
y=: 1e5 4 2
((895  h&|@^ y),h|895 ^_1) -: 895  h&|@^ y,_1 
((895x h&|@^ y),h|895x^_1) -: 895x h&|@^ y,_1 

(10000&|@(2&^) x) -: 2 (10000&|@^) x=: 5 10 ?@$ 1e6


NB. x^y on infinite arguments -------------------------------------------

0 -:  0   ^ _
_ -:  0   ^ __
0 -:  0.   ^ _
_ -:  0.   ^ __
_ -:  2.5 ^ _
0 -:  2.5 ^ __
1 -:  1   ^ _
1 -:  1   ^ __
1 -:  1.   ^ _
1 -:  1.   ^ __
0 -: _0.5 ^ _
0 -:  0.5 ^ _
_ -:  0.5 ^ __


0 0 -:  0 0   ^ _
_ _ -:  0 0   ^ __
0 0 -:  0. 0   ^ _
_ _ -:  0. 0   ^ __
_ _ -:  2.5 2.5 ^ _
0 0 -:  2.5 2.5 ^ __
1 1 -:  1 1   ^ _
1 1 -:  1 1   ^ __
1 1 -:  1. 1   ^ _
1 1 -:  1. 1   ^ __
0 0 -:  _0.5 _0.5 ^ _
0 0 -:  0.5 0.5 ^ _
_ _ -:  0.5 0.5 ^ __

(_1x ^ 0x) = _1 ^ 0
(_1x ^ 0) = _1 ^ 0
(_1x ^ 1x) = _1 ^ 1
(_1x ^ _1x) = _1 ^ _1
(_1x ^ 3x) = _1 ^ 3
(_1x ^ _3x) = _1 ^ _3
(_1x ^ 6x) = _1 ^ 6
(_1x ^ _6x) = _1 ^ _6

(!"! x: i: 8) -: (!"! i: 8)


'domain error' -: _1    ^ etx _ 
'domain error' -: _1    ^ etx __
'domain error' -: _5.15 ^ etx _ 
'domain error' -: _0.15 ^ etx __

0 0 0 1 _  _ _  _ -: ({._  1x)^ __ _5 _4 0 1 2 3x _
0 0 0 1 __ _ __   -: ({.__ 1x)^ __ _5 _4 0 1 2 3x
      0 1 _ _ _   -:          0 1 2 3x _ ^ {. _  1x
0 0 0 _ 1 0 0 0   -: __ _5 _4 0 1 2 3x _ ^ {. __ 1x

'domain error' -: _5x   ^ etx {._ 1x
'domain error' -: __ 1x ^ etx {._ 1x

0 0 0 1 _  _ _  _ -: ({._  1r1)^ __ _5 _4 0 1 2 3r1 _
0 0 0 1 __ _ __   -: ({.__ 1r1)^ __ _5 _4 0 1 2 3r1
      0 1 _ _ _   -:          0 1 2 3r1 _ ^ {. _  1r1
0 0 0 _ 1 0 0 0   -: __ _5 _4 0 1 2 3r1 _ ^ {. __ 1r1

0 -: _1r2 ^ {. _  1r1
0 -:  1r2 ^ {. _  1r1
_ -:  1r2 ^ {. __ 1r1

'domain error' -: _5r1   ^ etx {._  1r1
'domain error' -: __ 1r1 ^ etx {._  1r1
'domain error' -: _1r2   ^ etx {.__ 1r1

{{ try. 3 : y '' catch. end. 1 }} 0 : 0
NB. Modular arithmetic ------------------------------------------------------

NB. ^ m. n

'domain error' -: 'a' (^ m. 5) etx 4
'domain error' -: 7.2 (^ m. 5) etx 4
'domain error' -: 1r3 (^ m. 5) etx 4
'domain error' -: a: (^ m. 5) etx 4
'domain error' -: 1j1 (^ m. 5) etx 4

'domain error' -: 'a' (^ m. 5)~ etx 4
'domain error' -: 7.2 (^ m. 5)~ etx 4
'domain error' -: 1r3 (^ m. 5)~ etx 4
'domain error' -: a: (^ m. 5)~ etx 4
'domain error' -: 1j1 (^ m. 5)~ etx 4

'domain error' -: 5 (^ m. 10) etx _10
9 -: 3 (^ m. 10) _10

'' -: 'a' (^ m. 5) 0$0
'' -: 5 (^ m. 5) ''
'domain error' -: ". etx '5 m. 5'
'domain error' -: ". etx '^ m. 1.5'
'domain error' -: ". etx '^ m. a:'
'domain error' -: ". etx '^ m. 1j2'
'domain error' -: ". etx '^ m. 1r2'
1 = 2 ^ m. 5r1 ] 4
64 = 3!:0 ] 2 ^ m. 5r1 ] 4
64 = 3!:0 ] 2 ^ m. 5x ] 4
4 = 3!:0 ] 2 ^ m. 5 ] 4

0 = 2 3 4 ^ m. 1/ 5 6 7 8 9
0 = 2 3 4 ^ m. _1/ 5 6 7 8 9

f=: {{
 assert. 2     (^ m. y -: y&|@^&x:) ?10000
 assert. 3     (^ m. y -: y&|@^&x:) ?10000
 assert. 5     (^ m. y -: y&|@^&x:) ?10000
 assert. 64    (^ m. y -: y&|@^&x:) ?10000
 assert. 17393 (^ m. y -: y&|@^&x:) ?10000
 if. IF64 do.
 assert. 1327569234056 (^ m. y -: y&|@^&x:) ?10000
 assert. 580697153620649816294933768369x (^ m. y -: y&|@^&x:) ?10000
 end.
 for. i. 10 do. 'b e' =. >: 2 ?@$ 10000 if. 1 = b +. y do. assert. 1 = (b ^ m. y e) * m. y (b ^ m. y -e) else. assert. 'domain error' -: b (^ m. y) etx -e end. end.
 1
}}
f 1e9
f"0 (i. 3)+<.%:<:2^IF64{31 63
f"0 (i:2)+<.%:<:2^53
f"0 (2) + i. 1000
f"0 (-i. 1000) + <.%:<:2^IF64{31 63
f 7700892415753674751x
1
)

a =: (<"0 i: 8) , (<"0 <. 2 ^ (2 2 p. IF64) * 1 + i. 10) , (<"0 ] 10 ?@$ 2^100x)
mod =: (<"0 ] _5 _2 3 7 9) ,  (<"0 <. 2 ^ (1 + IF64) * 1 + i. 10) , (<"0 ] 10 ?@$ 2^100x)
f =: +`-`*
h =: {{ 'aa bb modm ff' =. y__ =: y
ff =. (<ff)`: 6
assert. (aa (ff f. m. modm) bb) -: modm | (modm | aa) ff (modm | bb)
1
}}
*./ , h@> { a;a;mod;<f

NB. % needs relative primes
a =: (#~ 0&~:@>) a
mod =: (<"0 ] 7919 104729 487417075631) , (<"0 ] 744708194707569769849x 162075339522463187576448020971x 41275321003050015370291839686835963242582144522177x)
h =: {{ 'aa bb modm' =. y__ =: y
if. modm | bb do.   NB. reject bb that is modular 0
assert. 0 = aa - m. modm bb * m. modm (aa (% m. modm) bb)
end.
1
}}
*./ , h@> { a;a;<mod

a =: a:;0.5;1j2;5r2  NB. domain error
f =: +`-`*`%
h =: {{ 'aa bb modm ff' =. y__ =: y
ff =. (<ff)`: 6
assert. 'domain error' -: aa ff f. m. modm etx bb
1
}}
NB. not working yet *./ , h@> { (<01);a;mod;<f
NB. not working yet *./ , h@> { a;(<01);mod;<f

4!:55 ;:'a exp f h mod n pow rou s x y'



epilog''

