prolog './g222i.ijs'
NB. ~:/ B ---------------------------------------------------------------

0 1 1 0 -: ~:/ 0 0 1 1 ,: 0 1 0 1

ne=: 4 : 'x~:y'

(~:/"1 -: ne/"1) x=:1=?3 5 17$13
(~:/"2 -: ne/"2) x
(~:/"3 -: ne/"3) x

(~:/"1 -: ne/"1) x=:1=?3 5 32$13
(~:/"2 -: ne/"2) x
(~:/"3 -: ne/"3) x

(~:/"1 -: ne/"1) x=:1=?3 8 32$13
(~:/"2 -: ne/"2) x
(~:/"3 -: ne/"3) x

f=: 3 : '(~:/ -: ne/) y ?@$ 2'
,f"1 x=:7 8 9,."0 1 [ _1 0 1+  255
,f"1 |."1 x
,f"1 x=:7 8 9,."0 1 [ _1 0 1+4*255
,f"1 |."1 x

(ne/"1 -: ~:/"1) #: i.2^6
(ne/"1 -: ~:/"1) #: i.2^7
(ne/"1 -: ~:/"1) #: i.2^8
(ne/"1 -: ~:/"1) #: i.2^9

(ne/   -: ~:/  ) |: #: i.2^6
(ne/   -: ~:/  ) |: #: i.2^7
(ne/   -: ~:/  ) |: #: i.2^8
(ne/   -: ~:/  ) |: #: i.2^9

(ne/"1 -: ~:/"1) 0    ,"1 #: i.2^6
(ne/"1 -: ~:/"1) 0 0  ,"1 #: i.2^6
(ne/"1 -: ~:/"1) 0 0 0,"1 #: i.2^6

(ne/   -: ~:/  ) |: 0    ,"1 #: i.2^6
(ne/   -: ~:/  ) |: 0 0  ,"1 #: i.2^6
(ne/   -: ~:/  ) |: 0 0 0,"1 #: i.2^6


4!:55 ;:'f ne x'



epilog''

