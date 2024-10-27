prolog './g202.ijs'
NB. ^: ------------------------------------------------------------------

randuni''

f1 =: 3&+
f2 =: +
g  =: +:@[ + 3&*@]
x  =: ?30
y  =: ?30
n  =: 3+?10

(  f1^:n y) -: ".(;n$<'f1 '),' y'
(x f2^:n y) -: x&f2^:n y
(  f1^:g y) -: f1^:(g y) y
(x f2^:g y) -: x&f2 ^: (x g y) y

a=:t=: 911
4!:55 ;:'t x y'
b=: 7!:0 ''
a=: 7!:0 ''

x=: 1000?1e7
y=: ;~^:5 x
t=: ;~;~;~;~;~x
t -: y
x=: 0
t -: y

4!:55 ;:'t x y'
b=: 7!:0 ''
a -: b

x=: 1000?1e7
y=: <^:5 x
t=: <<<<<x
t -: y
x=: 0
t -: y

4!:55 ;:'t x y'
b=: 7!:0 ''
a -: b

f=: 3 : 0
 if. y do. 
  assert. 'limit error' -: (32 ?@$ 2)&~:^:] etx (4$32) ?@$ 2 
 end.
 1
)

f -.IF64

234 0 0 0 -: 0"0^:(0 2 3 7) 234
3j4 0 0 0 -: 0"0^:(0 2 3 7) 3j4

(o.^:(i.3 4)1) -: (o.1)^i.3 4
(o.^:p 1)      -: (o.1)^p=:_7+?4 5$15

(+/^:4 i. 2 3 4 5) -: +/,i.2 3 4 5
(o.^:(6) 2)        -: 2*(o.1)^6

f  =: 2&-
g  =: *&3
(f f^:_1 x) -: x=:?100
(f^:_1 f x) -: x
(g g^:_1 x) -: x=:?100
(g^:_1 g x) -: x

NB. applying f zero times when appropriate

f=: >: [ ".@(('c=:>:c')&[)
x=: 20 ?@$ 0
(f x) -: >:x [ c=: 0
(c=>./,n) *.        x  -: f^:n x [ c=: 0 [ n=: 0
(c=>./,n) *. (>:^:n x) -: f^:n x [ c=: 0 [ n=: 10 20 $ 0
(c=>./,n) *. (>:^:n x) -: f^:n x [ c=: 0 [ n=: 10 20 ?@$ 5

NB. Test verb that returns input unmodified
(a:,1;,'z') -:  (a:,1;,'z') (<'x')"_ ^: ~:"0 (a:,1;,'z')
((<'x'),1;,'z') -:  ((<'d'),1;,'z') (<'x')"_ ^: ~:"0 (a:,1;,'z')
(a:,1;'x') -:  (a:,1;,'d') (<'x')"_ ^: ~:"0 (a:,1;,'z')
((<'x'),1;'x') -:  ((<'d'),1;,'x') (<'x')"_ ^: ~:"0 (a:,1;,'z')
(a:,('x');,'z') -:  (a:,0;,'z') (<'x')"_ ^: ~:"0 (a:,1;,'z')
((<'x'),('x');,'z') -:  ((<'d'),0;,'z') (<'x')"_ ^: ~:"0 (a:,1;,'z')
(a:,('x');'x') -:  (a:,0;,'d') (<'x')"_ ^: ~:"0 (a:,1;,'z')
((<'x'),('x');'x') -:  ((<'d'),0;,'x') (<'x')"_ ^: ~:"0 (a:,1;,'z')

x=: 1:`2:`3:
y=: 'asdf'
(x ,&<^:[ y) -: x ,&<^:(x[y) y

('' $ 1 3$_2 _1 0) -: +&1^:_2 i. 3 
(1 $ 1 3$_2 _1 0) -: +&1^:(,_2) i. 3 
(2 1 $ 2 3$_2 _1 0) -: +&1^:(2 1 $_2) i. 3 
(3 1 $ 3 3$_2 _1 0 _1 0 1 _2 _1 0) -: +&1^:(3 1 $_2 _1 _2) i. 3 
(2 3 $2 3 4 _2 _1 0) -: +&1^:(2 _2) i. 3 
(1 2 3 $2 3 4 _2 _1 0) -: +&1^:(,:2 _2) i. 3 
(1 2 3 $_2 _1 0 2 3 4) -: +&1^:(,:_2 2) i. 3 

NB. ^: Newton's Method --------------------------------------------------

eps =: 1e_8&*@+ 0&=
Da  =: 1 : '[ %~ + -&u ]'      NB. secant slope adverb with absolute diff.
D   =: 1 : 'eps u Da ]'        NB. secant slope adverb with relative diff.
Nt  =: 1 : '- u % u D'         NB. one iteration of Newton's method

*./ 1e_6 > | 3 - 3&* D 4 5 6
*./ 1e_6 > | (2&^ D 4 5 6) - (^.2)*2^4 5 6

(%:2) -: 3 : '(y^2)-2' Nt^:_ x=:1

(,3) -: >./^:(2&<:@:#@:$)^:_ [ 2 1 1 $ 3

NB. x ^:_ y  ------------------------
0 7 7 7 7 -: 7 ,~^:(#@]<5:)^:_ ] 0
0 -: ]^:_ [ 0
0 -: ]^:_"1 [ 0

NB. ^:_1 ----------------------------------------------------------------

ar   =: 5!:1
lr   =: 5!:5
inv  =: 1 : 'u^:_1'
test =: 2 : '((u b._1)-:lr<''v'') *. (v b._1)-:lr<''u''' 
f_g  =: 2 : ('f=.v :.u f.'; '((u b._1)-:lr<''v'') +. (u b._1)-:lr<''f''')
eq   =: 2 : '(ar<''u'') -: (ar<''v'')'
testx=: 2 : '(u b._1)-:lr<''v''' 

<  test >
<: test >:
+  test +
+: test -:
-  test -
-. test -.
*: test %:
%  test %
%. test %.
^  test ^.
|. test |.
|: test |:
,: test {.
#. test #:
/: test /:
[  test [
]  test ]
{. test ,:
". test ":
C. test C.
p. test p.
q: testx (*/"1)

({=) test (i."1&1)

m&+  testx ((-m)&+)          [ m=:o.?10000
m&-  testx (m&-)             [ m=:^0j1*?1000
-&m  testx (m&+)             [ m=:^0j1*?1000
m&*  testx ((%m)&*)          [ m=:o.?10000
m&%  testx (m&%)             [ m=:^0j1*?1000
%&m  testx (m&*)             [ m=:^0j1*?1000
m&o. testx ((-m)&o.)         [ m=:o.?10000
m&|. testx ((-m)&|.)         [ m=:o.?10000
m&^. testx (m&^)             [ m=:o.?10000
^.&m testx (%:&m)            [ m=:o.?10000
m&^  testx (m&^.)            [ m=:o.?10000
^&m  testx (m&%:)            [ m=:o.?10000
m&%: testx (^&m)             [ m=:o.?10000
%:&m testx (^.&m)            [ m=:o.?10000
NB. removed for Structural Under p&{  testx ((/:p)&{ )        [ p=:?~13
p&C.  testx ((/:@(p&C.)@(i.@#) {  ]) :.(p&C.))        [ p=:?~13


([: *: [: +: [: -:    |.  ) testx ([: |. [: +: [: -: %:)
([: *: [: +: [: -: [: |. ]) testx ([: |. [: +: [: -: %:)

g=: 3!:2
(lr <'g') -: 0&(3!:1) b. _1
(lr <'g') -: 1&(3!:1) b. _1
(lr <'g') -: 0&(3!:3) b. _1
(lr <'g') -: 1&(3!:3) b. _1

i     -: {&m ^:_1 (i=: ?3 2$#m) { m=:?5 3$1000
(i{m) -: m&i.^:_1 (i=: ?3 2$#m) [ m=:?5 3$1000

([ -: mm&#.    inv @ (mm&#.    )) x=:1,?7$mm [ mm=:2+?7
([ -: (4$mm)&#:inv @ ((4$mm)&#:)) x=:  ?mm^4 [ mm=:2+?7

(-: f^:_1 @ f=:p:) x=:?5$100
(-: f^:_1 @ f=:+.) x=:j./_50+?2 10$100
(-: f^:_1 @ f=:*.) x=:j./_50+?2 10$100

'3 - ]' -: ((1: + 2"_) - ]) b. _1
'3 * ]' -: ([ % (1: + 2"_)) b. _1
'4 * ]' -: ([ % (2"_ + 2"_)) b. _1
'7 * ]' -: ([ % (2"_ + 5:)) b. _1
'domain error' -: ". etx '((1: + 2"_1) - ]) b. _1'  NB. constant must have infinite rank
'domain error' -: ". etx '([ % (1: + 2"_1)) b. _1'
'domain error' -: ". etx '([ % (2"_1 + 2"_1)) b. _1'
'domain error' -: ". etx '([ % (2"_1 + 5:)) b. _1'
'domain error' -: ". etx '((1: + 2"1) - ]) b. _1'
'domain error' -: ". etx '([ % (1: + 2"2)) b. _1'
'domain error' -: ". etx '([ % (2"1 + 2"_)) b. _1'
'domain error' -: ". etx '([ % (2"2 + 5:)) b. _1'
NB. constant expressions through names
f =: 2:
'0.5 * ]' -: ([ * f) b. _1
'0.25 * ]' -: ([ * (f + f)) b. _1
g =: f
'0.5 * ]' -: ([ * g) b. _1
'0.25 * ]' -: ([ * (f + g)) b. _1
f1 =: ]
f2 =: f1
'0.5 * ]' -: (f2 * g) b. _1


+ /\  f_g (-    |.!.0 )
+ /\. f_g (- 1&(|.!.0))
* /\  f_g (%    |.!.1 )
* /\. f_g (% 1&(|.!.1))
= /\  f_g (=    |.!.1 )
= /\. f_g (= 1&(|.!.1))
~:/\  f_g (~:   |.!.0 )
~:/\. f_g (~:1&(|.!.0))
- /\  f_g ((-|.!.0) *"_1 $&1 _1@#)
- /\. f_g (+ 1&(|.!.0))
% /\  f_g ((%|.!.1) ^"_1 $&1 _1@#)
% /\. f_g (* 1&(|.!.1))

NB. <;.1    f_g ;
NB. <;.2    f_g ;
10j2&": f_g ".

x -: + /\ ^:_1 + /\ x=:>:?7 3$100
x -: + /\.^:_1 + /\.x
x -: - /\ ^:_1 - /\ x
x -: - /\.^:_1 - /\.x
x -: * /\ ^:_1 * /\ x
x -: * /\.^:_1 * /\.x
x -: % /\ ^:_1 % /\ x
x -: % /\.^:_1 % /\.x

y -: = /\ ^:_1 = /\ y=:?12 5$2
y -: = /\.^:_1 = /\.y
y -: ~:/\ ^:_1 ~:/\ y
y -: ~:/\.^:_1 ~:/\.y

f=: 3: * 12"_ + ]
x -: f f^:_1 x=:0.1*1+?2 10$100
x -: f^:_1 f x

f=: [: 2&* 10&^.
x -: f f^:_1 x=:0.1*1+?2 10$100
x -: f^:_1 f x

cap=: [:
f=: cap 2&* 10&^.
x -: f f^:_1 x=:0.1*1+?2 10$100
x -: f^:_1 f x

plus =: +
minus=: -
times=: *

(12&+^:_1 -: 12&plus ^:_1) x=:?2 10$100
(+&12^:_1 -: plus&12 ^:_1) x=:?2 10$100

(12&-^:_1 -: 12&minus^:_1) x=:?2 10$100
(-&12^:_1 -: minus&12^:_1) x=:?2 10$100

(+~^:_1 -: plus ~^:_1) x=:?2 10$100
(*~^:_1 -: times~^:_1) x=:?2 10$100

f_loc_     =: -:
fi_loc_    =: 3 : 'twice y'
twice_loc_ =: +:
g          =: f_loc_ :. fi_loc_

f=: + :. *
12 -: 3 (f^:_1) 4

x -: g g^:_1 x=:?2 10$100
x -: g^:_1 g x=:?2 10$100

m=: (_500+?1000),2^?20
m&p. testx ((({:m)%~1,~-{.m)&p.)
'domain error' -: ex '5 0&p. ^:_1 ]17'

b=: ? 100$2
n=: +/b
Expand=: (* +/\)@[ { -@>:@#@] {. ]
(b&Expand -: b&#^:_1) x=:    ?n$1000
(b&Expand -: b&#^:_1) x=:a.{~?n$#a.
(b&Expand -: b&#^:_1) x=:y {~?n$#y=:;:'tris kai deka phobia finden tush'
(b&Expand -: b&#^:_1) x=:y {~?n$#y=:(u:&.>) ;:'tris kai deka phobia finden tush'
(b&Expand -: b&#^:_1) x=:y {~?n$#y=:(10&u:&.>) ;:'tris kai deka phobia finden tush'
(b&Expand -: b&#^:_1) x=:    ?(n,5)$1000
(b&Expand -: b&#^:_1) x=:a.{~?(n,5)$#a.
(b&Expand -: b&#^:_1) x=:y {~?(n,5)$#y=:;:'tris kai deka phobia finden tush'
(b&Expand -: b&#^:_1) x=:y {~?(n,5)$#y=:(u:&.>) ;:'tris kai deka phobia finden tush'
(b&Expand -: b&#^:_1) x=:y {~?(n,5)$#y=:(10&u:&.>) ;:'tris kai deka phobia finden tush'
(b&Expand -: b&#^:_1) x=:    ?(n,2 5)$1000
(b&Expand -: b&#^:_1) x=:a.{~?(n,2 5)$#a.
(b&Expand -: b&#^:_1) x=:adot1{~?(n,2 5)$#adot1
(b&Expand -: b&#^:_1) x=:adot2{~?(n,2 5)$#adot2
(b&Expand -: b&#^:_1) x=:y {~?(n,2 5)$#y=:;:'tris kai deka phobia finden tush'
(b&Expand -: b&#^:_1) x=:y {~?(n,2 5)$#y=:(u:&.>) ;:'tris kai deka phobia finden tush'
(b&Expand -: b&#^:_1) x=:y {~?(n,2 5)$#y=:(10&u:&.>) ;:'tris kai deka phobia finden tush'

(2&+&.(b&#) y) -: b*2+y=:?((#b),5)$1000

'a a  a' -: 1 0 1 0 0 1&#^:_1 'a'
'a a  a' -: 1 0 1 0 0 1&#^:_1 u:'a'
'a a  a' -: 1 0 1 0 0 1&#^:_1[10&u:'a'

'length error' -: 1 0 1 0 0 1&#^:_1 etx 'ab'
'length error' -: 1 0 1 0 0 1&#^:_1 etx 'abcd'
'length error' -: 1 0 1 0 0 1&#^:_1 etx ,'a'
'length error' -: 1 0 1 0 0 1&#^:_1 etx u:'ab'
'length error' -: 1 0 1 0 0 1&#^:_1 etx u:'abcd'
'length error' -: 1 0 1 0 0 1&#^:_1 etx ,u:'a'
'length error' -: 1 0 1 0 0 1&#^:_1 etx 10&u:'ab'
'length error' -: 1 0 1 0 0 1&#^:_1 etx 10&u:'abcd'
'length error' -: 1 0 1 0 0 1&#^:_1 etx ,10&u:'a'
'length error' -: 1 0 1 0 0 1&#^:_1 etx s:@<"0 'ab'
'length error' -: 1 0 1 0 0 1&#^:_1 etx s:@<"0 'abcd'
'length error' -: 1 0 1 0 0 1&#^:_1 etx ,s:@<"0 'a'

'length error' -: 1 0 1 0 0 1&#^:_1 etx i.2 4
'length error' -: 1 0 1 0 0 1&#^:_1 etx i.4 6
'length error' -: 1 0 1 0 0 1&#^:_1 etx i.1 3

x -: ]&.(   _2&|:) x=: ?2 3 4 5$1000
x -: ]&.(_2 _3&|:) x

(1;<<1) -: <^:(<@2:) <1  NB. verify boxed result of v OK
(1;<<1) -: 2 <@]^:(<@2:) <1  NB. verify boxed result of v OK
(2 2 $ 1;'';2;1) -: 2 ;^:(<@2:) <1  NB. verify boxed result of v OK

NB. x u@]^:[ y
y=: (<"0 (1 2 3 2 3 1)) ,. (2 1 3 2 1 3 # i.#2 1 3 2 1 3)</. i. 12
((<@]^:[&>/)"1 -: (<@]"]^:[&>/)"1) y
((>:@]^:[&>/)"1 -: (>:@]"]^:[&>/)"1) y
((<@:]^:[&>/)"1 -: (<@]"]^:[&>/)"1) y
((>:@:]^:[&>/)"1 -: (>:@]"]^:[&>/)"1) y

NB. I.^:_1
'domain error' -: (I.^:_1) etx 'abc'
'domain error' -: (I.^:_1) etx 0.5
'domain error' -: (I.^:_1) etx a:
'domain error' -: (I.^:_1) etx 2j2
'domain error' -: (I.^:_1) etx _1 3
(-:  (I.^:_1)@({~ ?~@#)@I.) 0 (>:@(i:&1@:~:) {. ]) 20 ?@$ 100  NB. inverse applies properly to scrambled result
(-:  (I.^:_1)@({~ ?~@#)@I.) 0 (>:@(i:&1@:~:) {. ]) 100 ?@$ 20

NB. special forms detected properly
(7!:2 '(i. 5)&i.') > 10000 + 7!:2 'i.&(i. 5)'
(7!:2 '(1;(200 2 2$1 9 0 0  0 0 0 0.);(<''"'');0 0 0 0)&;:') > 100 + 7!:2 ';:&(1;(200 2 2$1 9 0 0  0 0 0 0.);(<''"'');0 0 0 0)'
(7!:2 '(_1;_1)&(128!:3)') > 1000 + 7!:2 '(128!:3)&(_1;_1)'

NB. DoWhile and Converge
5.684341886080801487e_14 -: _1 + -:&.<:^:1:^:_ ] 2
7.105427357601001859e_15 -: _1 + -:&.<:^:_ ] 2
0 3 -: <:^:(*@{.)^:_. ] 5 8
'domain error' -: ex '-:&.<:^:_.'
(17000*SZI) > 7!:2 '+:@}.^:(3<#)^:_. ] 100 100 $ 5'  NB. inplace
(17000*SZI) < 7!:2 '+:@}.^:(3<#)^:_ ] 100 100 $ 5'  NB. virtual but not inplace



(271828) 18!:55 ;:'loc'


4!:55 ;:'a adot1 adot2 sdot0 b c D Da Nt Expand ar cap eps eq f f1 f2 f_g '
4!:55 ;:'g h hi i id inv lr m mm minus n p plus '
4!:55 ;:'t test testx times x y '
randfini''


epilog''

