
Η
ϊΖφΖ
BankedStore
clock" 
reset
¦
io*
	sinkC_adr*~
ready

valid

XbitsP*N
noop

way

set


beat

mask

!	sinkC_dat*
data
@
	sinkD_adr*~
ready

valid

XbitsP*N
noop

way

set


beat

mask

!	sinkD_dat*
data
@
sourceC_adr*~
ready

valid

XbitsP*N
noop

way

set


beat

mask

!sourceC_dat*
data
@
sourceD_radr*~
ready

valid

XbitsP*N
noop

way

set


beat

mask

"sourceD_rdat*
data
@
sourceD_wadr*~
ready

valid

XbitsP*N
noop

way

set


beat

mask

$sourceD_wdat*
data
@
	

clock
 
	

reset
 


io
 >"

cc_banks_0"

@
@ DescribedSRAM.scala 23:26>"

cc_banks_1"

@
@ DescribedSRAM.scala 23:26>"

cc_banks_2"

@
@ DescribedSRAM.scala 23:26>"

cc_banks_3"

@
@ DescribedSRAM.scala 23:26U26
_T0R.:
:


io	sinkC_datdata
63
0BankedStore.scala 122:19v2`
_T_1XRV(:&
:
:


io	sinkC_adrbitsway(:&
:
:


io	sinkC_adrbitssetCat.scala 29:58W2A
_T_29R7

_T_1):'
:
:


io	sinkC_adrbitsbeatCat.scala 29:58
z
reqs_0p*n
wen

index

bankSel

bankSum

bankEn

data2


@BankedStore.scala 127:19,



reqs_0BankedStore.scala 127:19?2 
_T_3R

_T_2
1
0BankedStore.scala 129:2892 
_T_4R

_T_3
1
0OneHot.scala 64:49<2#
_T_5R
	

1

_T_4OneHot.scala 65:1292 
_T_6R

_T_5
3
0OneHot.scala 65:27N2/
_T_7'R%:



reqs_0bankSum
0
0BankedStore.scala 130:71`2A
_T_89R7

_T_7):'
:
:


io	sinkC_adrbitsmaskBankedStore.scala 130:9662
_T_9R"

_T_8BankedStore.scala 130:101C2$
_T_10R

_T_9	

0BankedStore.scala 130:58O20
_T_11'R%:



reqs_0bankSum
1
1BankedStore.scala 130:71b2C
_T_12:R8	

_T_11):'
:
:


io	sinkC_adrbitsmaskBankedStore.scala 130:9682
_T_13R"	

_T_12BankedStore.scala 130:101D2%
_T_14R	

_T_13	

0BankedStore.scala 130:58O20
_T_15'R%:



reqs_0bankSum
2
2BankedStore.scala 130:71b2C
_T_16:R8	

_T_15):'
:
:


io	sinkC_adrbitsmaskBankedStore.scala 130:9682
_T_17R"	

_T_16BankedStore.scala 130:101D2%
_T_18R	

_T_17	

0BankedStore.scala 130:58O20
_T_19'R%:



reqs_0bankSum
3
3BankedStore.scala 130:71b2C
_T_20:R8	

_T_19):'
:
:


io	sinkC_adrbitsmaskBankedStore.scala 130:9682
_T_21R"	

_T_20BankedStore.scala 130:101D2%
_T_22R	

_T_21	

0BankedStore.scala 130:5892#
_T_23R	

_T_14	

_T_10Cat.scala 29:5892#
_T_24R	

_T_22	

_T_18Cat.scala 29:5892#
_T_25R	

_T_24	

_T_23Cat.scala 29:58@2!
_T_26R

_T_2
1
0BankedStore.scala 131:23B2#
_T_27R	

_T_25	

_T_26BankedStore.scala 131:21A2"
_T_28R	

_T_27
0
0BankedStore.scala 131:21Lz-
 :
:


io	sinkC_adrready	

_T_28BankedStore.scala 131:13Az"
:



reqs_0wen	

1BankedStore.scala 133:18;2
_T_29R	

_T_2
2BankedStore.scala 134:23Az"
:



reqs_0index	

_T_29BankedStore.scala 134:18;2!
_T_30R

_T_6
0
0Bitwise.scala 26:51;2!
_T_31R

_T_6
1
1Bitwise.scala 26:51;2!
_T_32R

_T_6
2
2Bitwise.scala 26:51;2!
_T_33R

_T_6
3
3Bitwise.scala 26:5192#
_T_34R	

_T_31	

_T_30Cat.scala 29:5892#
_T_35R	

_T_33	

_T_32Cat.scala 29:5892#
_T_36R	

_T_35	

_T_34Cat.scala 29:58\2B
_T_379R7):'
:
:


io	sinkC_adrbitsmask
0
0Bitwise.scala 72:15K21
_T_38(2&
	

_T_37


15	

0Bitwise.scala 72:12B2#
_T_39R	

_T_36	

_T_38BankedStore.scala 135:65d2E
_T_40<2:
 :
:


io	sinkC_adrvalid	

_T_39	

0BankedStore.scala 135:24Cz$
:



reqs_0bankSel	

_T_40BankedStore.scala 135:18<2"
_T_41R	

_T_25
0
0Bitwise.scala 26:51<2"
_T_42R	

_T_25
1
1Bitwise.scala 26:51<2"
_T_43R	

_T_25
2
2Bitwise.scala 26:51<2"
_T_44R	

_T_25
3
3Bitwise.scala 26:5192#
_T_45R	

_T_42	

_T_41Cat.scala 29:5892#
_T_46R	

_T_44	

_T_43Cat.scala 29:5892#
_T_47R	

_T_46	

_T_45Cat.scala 29:58P21
_T_48(R&:



reqs_0bankSel	

_T_47BankedStore.scala 136:59m2N
_T_49E2C
):'
:
:


io	sinkC_adrbitsnoop	

0	

_T_48BankedStore.scala 136:24Bz#
:



reqs_0bankEn	

_T_49BankedStore.scala 136:184

_T_502


@BankedStore.scala 137:24+
	

_T_50BankedStore.scala 137:24;z
B
	

_T_50
0

_TBankedStore.scala 137:24;z
B
	

_T_50
1

_TBankedStore.scala 137:24;z
B
	

_T_50
2

_TBankedStore.scala 137:24;z
B
	

_T_50
3

_TBankedStore.scala 137:24A!
:



reqs_0data	

_T_50BankedStore.scala 137:18X29
_T_510R.:
:


io	sinkD_datdata
63
0BankedStore.scala 122:19w2a
_T_52XRV(:&
:
:


io	sinkD_adrbitsway(:&
:
:


io	sinkD_adrbitssetCat.scala 29:58Y2C
_T_53:R8	

_T_52):'
:
:


io	sinkD_adrbitsbeatCat.scala 29:58
z
reqs_2p*n
wen

index

bankSel

bankSum

bankEn

data2


@BankedStore.scala 127:19,



reqs_2BankedStore.scala 127:19A2"
_T_54R	

_T_53
1
0BankedStore.scala 129:28;2"
_T_55R	

_T_54
1
0OneHot.scala 64:49>2%
_T_56R
	

1	

_T_55OneHot.scala 65:12;2"
_T_57R	

_T_56
3
0OneHot.scala 65:27O20
_T_58'R%:



reqs_2bankSum
0
0BankedStore.scala 130:71b2C
_T_59:R8	

_T_58):'
:
:


io	sinkD_adrbitsmaskBankedStore.scala 130:9682
_T_60R"	

_T_59BankedStore.scala 130:101D2%
_T_61R	

_T_60	

0BankedStore.scala 130:58O20
_T_62'R%:



reqs_2bankSum
1
1BankedStore.scala 130:71b2C
_T_63:R8	

_T_62):'
:
:


io	sinkD_adrbitsmaskBankedStore.scala 130:9682
_T_64R"	

_T_63BankedStore.scala 130:101D2%
_T_65R	

_T_64	

0BankedStore.scala 130:58O20
_T_66'R%:



reqs_2bankSum
2
2BankedStore.scala 130:71b2C
_T_67:R8	

_T_66):'
:
:


io	sinkD_adrbitsmaskBankedStore.scala 130:9682
_T_68R"	

_T_67BankedStore.scala 130:101D2%
_T_69R	

_T_68	

0BankedStore.scala 130:58O20
_T_70'R%:



reqs_2bankSum
3
3BankedStore.scala 130:71b2C
_T_71:R8	

_T_70):'
:
:


io	sinkD_adrbitsmaskBankedStore.scala 130:9682
_T_72R"	

_T_71BankedStore.scala 130:101D2%
_T_73R	

_T_72	

0BankedStore.scala 130:5892#
_T_74R	

_T_65	

_T_61Cat.scala 29:5892#
_T_75R	

_T_73	

_T_69Cat.scala 29:5892#
_T_76R	

_T_75	

_T_74Cat.scala 29:58A2"
_T_77R	

_T_53
1
0BankedStore.scala 131:23B2#
_T_78R	

_T_76	

_T_77BankedStore.scala 131:21A2"
_T_79R	

_T_78
0
0BankedStore.scala 131:21Lz-
 :
:


io	sinkD_adrready	

_T_79BankedStore.scala 131:13Az"
:



reqs_2wen	

1BankedStore.scala 133:18<2
_T_80R		

_T_53
2BankedStore.scala 134:23Az"
:



reqs_2index	

_T_80BankedStore.scala 134:18<2"
_T_81R	

_T_57
0
0Bitwise.scala 26:51<2"
_T_82R	

_T_57
1
1Bitwise.scala 26:51<2"
_T_83R	

_T_57
2
2Bitwise.scala 26:51<2"
_T_84R	

_T_57
3
3Bitwise.scala 26:5192#
_T_85R	

_T_82	

_T_81Cat.scala 29:5892#
_T_86R	

_T_84	

_T_83Cat.scala 29:5892#
_T_87R	

_T_86	

_T_85Cat.scala 29:58\2B
_T_889R7):'
:
:


io	sinkD_adrbitsmask
0
0Bitwise.scala 72:15K21
_T_89(2&
	

_T_88


15	

0Bitwise.scala 72:12B2#
_T_90R	

_T_87	

_T_89BankedStore.scala 135:65d2E
_T_91<2:
 :
:


io	sinkD_adrvalid	

_T_90	

0BankedStore.scala 135:24Cz$
:



reqs_2bankSel	

_T_91BankedStore.scala 135:18<2"
_T_92R	

_T_76
0
0Bitwise.scala 26:51<2"
_T_93R	

_T_76
1
1Bitwise.scala 26:51<2"
_T_94R	

_T_76
2
2Bitwise.scala 26:51<2"
_T_95R	

_T_76
3
3Bitwise.scala 26:5192#
_T_96R	

_T_93	

_T_92Cat.scala 29:5892#
_T_97R	

_T_95	

_T_94Cat.scala 29:5892#
_T_98R	

_T_97	

_T_96Cat.scala 29:58P21
_T_99(R&:



reqs_2bankSel	

_T_98BankedStore.scala 136:59n2O
_T_100E2C
):'
:
:


io	sinkD_adrbitsnoop	

0	

_T_99BankedStore.scala 136:24Cz$
:



reqs_2bankEn


_T_100BankedStore.scala 136:185

_T_1012


@BankedStore.scala 137:24,



_T_101BankedStore.scala 137:24?z 
B



_T_101
0	

_T_51BankedStore.scala 137:24?z 
B



_T_101
1	

_T_51BankedStore.scala 137:24?z 
B



_T_101
2	

_T_51BankedStore.scala 137:24?z 
B



_T_101
3	

_T_51BankedStore.scala 137:24B"
:



reqs_2data


_T_101BankedStore.scala 137:18|2f
_T_102\RZ*:(
!:
:


iosourceC_adrbitsway*:(
!:
:


iosourceC_adrbitssetCat.scala 29:58]2G
_T_103=R;


_T_102+:)
!:
:


iosourceC_adrbitsbeatCat.scala 29:58
z
reqs_1p*n
wen

index

bankSel

bankSum

bankEn

data2


@BankedStore.scala 127:19,



reqs_1BankedStore.scala 127:19C2$
_T_104R


_T_103
1
0BankedStore.scala 129:28=2$
_T_105R


_T_104
1
0OneHot.scala 64:49@2'
_T_106R
	

1


_T_105OneHot.scala 65:12=2$
_T_107R


_T_106
3
0OneHot.scala 65:27P21
_T_108'R%:



reqs_1bankSum
0
0BankedStore.scala 130:71f2G
_T_109=R;


_T_108+:)
!:
:


iosourceC_adrbitsmaskBankedStore.scala 130:96:2
_T_110R"


_T_109BankedStore.scala 130:101F2'
_T_111R


_T_110	

0BankedStore.scala 130:58P21
_T_112'R%:



reqs_1bankSum
1
1BankedStore.scala 130:71f2G
_T_113=R;


_T_112+:)
!:
:


iosourceC_adrbitsmaskBankedStore.scala 130:96:2
_T_114R"


_T_113BankedStore.scala 130:101F2'
_T_115R


_T_114	

0BankedStore.scala 130:58P21
_T_116'R%:



reqs_1bankSum
2
2BankedStore.scala 130:71f2G
_T_117=R;


_T_116+:)
!:
:


iosourceC_adrbitsmaskBankedStore.scala 130:96:2
_T_118R"


_T_117BankedStore.scala 130:101F2'
_T_119R


_T_118	

0BankedStore.scala 130:58P21
_T_120'R%:



reqs_1bankSum
3
3BankedStore.scala 130:71f2G
_T_121=R;


_T_120+:)
!:
:


iosourceC_adrbitsmaskBankedStore.scala 130:96:2
_T_122R"


_T_121BankedStore.scala 130:101F2'
_T_123R


_T_122	

0BankedStore.scala 130:58<2&
_T_124R


_T_115


_T_111Cat.scala 29:58<2&
_T_125R


_T_123


_T_119Cat.scala 29:58<2&
_T_126R


_T_125


_T_124Cat.scala 29:58C2$
_T_127R


_T_103
1
0BankedStore.scala 131:23E2&
_T_128R


_T_126


_T_127BankedStore.scala 131:21C2$
_T_129R


_T_128
0
0BankedStore.scala 131:21Oz0
": 
:


iosourceC_adrready


_T_129BankedStore.scala 131:13Az"
:



reqs_1wen	

0BankedStore.scala 133:18>2
_T_130R	


_T_103
2BankedStore.scala 134:23Bz#
:



reqs_1index


_T_130BankedStore.scala 134:18>2$
_T_131R


_T_107
0
0Bitwise.scala 26:51>2$
_T_132R


_T_107
1
1Bitwise.scala 26:51>2$
_T_133R


_T_107
2
2Bitwise.scala 26:51>2$
_T_134R


_T_107
3
3Bitwise.scala 26:51<2&
_T_135R


_T_132


_T_131Cat.scala 29:58<2&
_T_136R


_T_134


_T_133Cat.scala 29:58<2&
_T_137R


_T_136


_T_135Cat.scala 29:58_2E
_T_138;R9+:)
!:
:


iosourceC_adrbitsmask
0
0Bitwise.scala 72:15M23
_T_139)2'



_T_138


15	

0Bitwise.scala 72:12E2&
_T_140R


_T_137


_T_139BankedStore.scala 135:65h2I
_T_141?2=
": 
:


iosourceC_adrvalid


_T_140	

0BankedStore.scala 135:24Dz%
:



reqs_1bankSel


_T_141BankedStore.scala 135:18>2$
_T_142R


_T_126
0
0Bitwise.scala 26:51>2$
_T_143R


_T_126
1
1Bitwise.scala 26:51>2$
_T_144R


_T_126
2
2Bitwise.scala 26:51>2$
_T_145R


_T_126
3
3Bitwise.scala 26:51<2&
_T_146R


_T_143


_T_142Cat.scala 29:58<2&
_T_147R


_T_145


_T_144Cat.scala 29:58<2&
_T_148R


_T_147


_T_146Cat.scala 29:58R23
_T_149)R':



reqs_1bankSel


_T_148BankedStore.scala 136:59q2R
_T_150H2F
+:)
!:
:


iosourceC_adrbitsnoop	

0


_T_149BankedStore.scala 136:24Cz$
:



reqs_1bankEn


_T_150BankedStore.scala 136:185

_T_1512


@BankedStore.scala 137:24,



_T_151BankedStore.scala 137:24Az"
B



_T_151
0	

0@BankedStore.scala 137:24Az"
B



_T_151
1	

0@BankedStore.scala 137:24Az"
B



_T_151
2	

0@BankedStore.scala 137:24Az"
B



_T_151
3	

0@BankedStore.scala 137:24B"
:



reqs_1data


_T_151BankedStore.scala 137:18~2h
_T_152^R\+:)
": 
:


iosourceD_radrbitsway+:)
": 
:


iosourceD_radrbitssetCat.scala 29:58^2H
_T_153>R<


_T_152,:*
": 
:


iosourceD_radrbitsbeatCat.scala 29:58
z
reqs_4p*n
wen

index

bankSel

bankSum

bankEn

data2


@BankedStore.scala 127:19,



reqs_4BankedStore.scala 127:19C2$
_T_154R


_T_153
1
0BankedStore.scala 129:28=2$
_T_155R


_T_154
1
0OneHot.scala 64:49@2'
_T_156R
	

1


_T_155OneHot.scala 65:12=2$
_T_157R


_T_156
3
0OneHot.scala 65:27P21
_T_158'R%:



reqs_4bankSum
0
0BankedStore.scala 130:71g2H
_T_159>R<


_T_158,:*
": 
:


iosourceD_radrbitsmaskBankedStore.scala 130:96:2
_T_160R"


_T_159BankedStore.scala 130:101F2'
_T_161R


_T_160	

0BankedStore.scala 130:58P21
_T_162'R%:



reqs_4bankSum
1
1BankedStore.scala 130:71g2H
_T_163>R<


_T_162,:*
": 
:


iosourceD_radrbitsmaskBankedStore.scala 130:96:2
_T_164R"


_T_163BankedStore.scala 130:101F2'
_T_165R


_T_164	

0BankedStore.scala 130:58P21
_T_166'R%:



reqs_4bankSum
2
2BankedStore.scala 130:71g2H
_T_167>R<


_T_166,:*
": 
:


iosourceD_radrbitsmaskBankedStore.scala 130:96:2
_T_168R"


_T_167BankedStore.scala 130:101F2'
_T_169R


_T_168	

0BankedStore.scala 130:58P21
_T_170'R%:



reqs_4bankSum
3
3BankedStore.scala 130:71g2H
_T_171>R<


_T_170,:*
": 
:


iosourceD_radrbitsmaskBankedStore.scala 130:96:2
_T_172R"


_T_171BankedStore.scala 130:101F2'
_T_173R


_T_172	

0BankedStore.scala 130:58<2&
_T_174R


_T_165


_T_161Cat.scala 29:58<2&
_T_175R


_T_173


_T_169Cat.scala 29:58<2&
_T_176R


_T_175


_T_174Cat.scala 29:58C2$
_T_177R


_T_153
1
0BankedStore.scala 131:23E2&
_T_178R


_T_176


_T_177BankedStore.scala 131:21C2$
_T_179R


_T_178
0
0BankedStore.scala 131:21Pz1
#:!
:


iosourceD_radrready


_T_179BankedStore.scala 131:13Az"
:



reqs_4wen	

0BankedStore.scala 133:18>2
_T_180R	


_T_153
2BankedStore.scala 134:23Bz#
:



reqs_4index


_T_180BankedStore.scala 134:18>2$
_T_181R


_T_157
0
0Bitwise.scala 26:51>2$
_T_182R


_T_157
1
1Bitwise.scala 26:51>2$
_T_183R


_T_157
2
2Bitwise.scala 26:51>2$
_T_184R


_T_157
3
3Bitwise.scala 26:51<2&
_T_185R


_T_182


_T_181Cat.scala 29:58<2&
_T_186R


_T_184


_T_183Cat.scala 29:58<2&
_T_187R


_T_186


_T_185Cat.scala 29:58`2F
_T_188<R:,:*
": 
:


iosourceD_radrbitsmask
0
0Bitwise.scala 72:15M23
_T_189)2'



_T_188


15	

0Bitwise.scala 72:12E2&
_T_190R


_T_187


_T_189BankedStore.scala 135:65i2J
_T_191@2>
#:!
:


iosourceD_radrvalid


_T_190	

0BankedStore.scala 135:24Dz%
:



reqs_4bankSel


_T_191BankedStore.scala 135:18>2$
_T_192R


_T_176
0
0Bitwise.scala 26:51>2$
_T_193R


_T_176
1
1Bitwise.scala 26:51>2$
_T_194R


_T_176
2
2Bitwise.scala 26:51>2$
_T_195R


_T_176
3
3Bitwise.scala 26:51<2&
_T_196R


_T_193


_T_192Cat.scala 29:58<2&
_T_197R


_T_195


_T_194Cat.scala 29:58<2&
_T_198R


_T_197


_T_196Cat.scala 29:58R23
_T_199)R':



reqs_4bankSel


_T_198BankedStore.scala 136:59r2S
_T_200I2G
,:*
": 
:


iosourceD_radrbitsnoop	

0


_T_199BankedStore.scala 136:24Cz$
:



reqs_4bankEn


_T_200BankedStore.scala 136:185

_T_2012


@BankedStore.scala 137:24,



_T_201BankedStore.scala 137:24Az"
B



_T_201
0	

0@BankedStore.scala 137:24Az"
B



_T_201
1	

0@BankedStore.scala 137:24Az"
B



_T_201
2	

0@BankedStore.scala 137:24Az"
B



_T_201
3	

0@BankedStore.scala 137:24B"
:



reqs_4data


_T_201BankedStore.scala 137:18\2=
_T_2023R1": 
:


iosourceD_wdatdata
63
0BankedStore.scala 122:19~2h
_T_203^R\+:)
": 
:


iosourceD_wadrbitsway+:)
": 
:


iosourceD_wadrbitssetCat.scala 29:58^2H
_T_204>R<


_T_203,:*
": 
:


iosourceD_wadrbitsbeatCat.scala 29:58
z
reqs_3p*n
wen

index

bankSel

bankSum

bankEn

data2


@BankedStore.scala 127:19,



reqs_3BankedStore.scala 127:19C2$
_T_205R


_T_204
1
0BankedStore.scala 129:28=2$
_T_206R


_T_205
1
0OneHot.scala 64:49@2'
_T_207R
	

1


_T_206OneHot.scala 65:12=2$
_T_208R


_T_207
3
0OneHot.scala 65:27P21
_T_209'R%:



reqs_3bankSum
0
0BankedStore.scala 130:71g2H
_T_210>R<


_T_209,:*
": 
:


iosourceD_wadrbitsmaskBankedStore.scala 130:96:2
_T_211R"


_T_210BankedStore.scala 130:101F2'
_T_212R


_T_211	

0BankedStore.scala 130:58P21
_T_213'R%:



reqs_3bankSum
1
1BankedStore.scala 130:71g2H
_T_214>R<


_T_213,:*
": 
:


iosourceD_wadrbitsmaskBankedStore.scala 130:96:2
_T_215R"


_T_214BankedStore.scala 130:101F2'
_T_216R


_T_215	

0BankedStore.scala 130:58P21
_T_217'R%:



reqs_3bankSum
2
2BankedStore.scala 130:71g2H
_T_218>R<


_T_217,:*
": 
:


iosourceD_wadrbitsmaskBankedStore.scala 130:96:2
_T_219R"


_T_218BankedStore.scala 130:101F2'
_T_220R


_T_219	

0BankedStore.scala 130:58P21
_T_221'R%:



reqs_3bankSum
3
3BankedStore.scala 130:71g2H
_T_222>R<


_T_221,:*
": 
:


iosourceD_wadrbitsmaskBankedStore.scala 130:96:2
_T_223R"


_T_222BankedStore.scala 130:101F2'
_T_224R


_T_223	

0BankedStore.scala 130:58<2&
_T_225R


_T_216


_T_212Cat.scala 29:58<2&
_T_226R


_T_224


_T_220Cat.scala 29:58<2&
_T_227R


_T_226


_T_225Cat.scala 29:58C2$
_T_228R


_T_204
1
0BankedStore.scala 131:23E2&
_T_229R


_T_227


_T_228BankedStore.scala 131:21C2$
_T_230R


_T_229
0
0BankedStore.scala 131:21Pz1
#:!
:


iosourceD_wadrready


_T_230BankedStore.scala 131:13Az"
:



reqs_3wen	

1BankedStore.scala 133:18>2
_T_231R	


_T_204
2BankedStore.scala 134:23Bz#
:



reqs_3index


_T_231BankedStore.scala 134:18>2$
_T_232R


_T_208
0
0Bitwise.scala 26:51>2$
_T_233R


_T_208
1
1Bitwise.scala 26:51>2$
_T_234R


_T_208
2
2Bitwise.scala 26:51>2$
_T_235R


_T_208
3
3Bitwise.scala 26:51<2&
_T_236R


_T_233


_T_232Cat.scala 29:58<2&
_T_237R


_T_235


_T_234Cat.scala 29:58<2&
_T_238R


_T_237


_T_236Cat.scala 29:58`2F
_T_239<R:,:*
": 
:


iosourceD_wadrbitsmask
0
0Bitwise.scala 72:15M23
_T_240)2'



_T_239


15	

0Bitwise.scala 72:12E2&
_T_241R


_T_238


_T_240BankedStore.scala 135:65i2J
_T_242@2>
#:!
:


iosourceD_wadrvalid


_T_241	

0BankedStore.scala 135:24Dz%
:



reqs_3bankSel


_T_242BankedStore.scala 135:18>2$
_T_243R


_T_227
0
0Bitwise.scala 26:51>2$
_T_244R


_T_227
1
1Bitwise.scala 26:51>2$
_T_245R


_T_227
2
2Bitwise.scala 26:51>2$
_T_246R


_T_227
3
3Bitwise.scala 26:51<2&
_T_247R


_T_244


_T_243Cat.scala 29:58<2&
_T_248R


_T_246


_T_245Cat.scala 29:58<2&
_T_249R


_T_248


_T_247Cat.scala 29:58R23
_T_250)R':



reqs_3bankSel


_T_249BankedStore.scala 136:59r2S
_T_251I2G
,:*
": 
:


iosourceD_wadrbitsnoop	

0


_T_250BankedStore.scala 136:24Cz$
:



reqs_3bankEn


_T_251BankedStore.scala 136:185

_T_2522


@BankedStore.scala 137:24,



_T_252BankedStore.scala 137:24@z!
B



_T_252
0


_T_202BankedStore.scala 137:24@z!
B



_T_252
1


_T_202BankedStore.scala 137:24@z!
B



_T_252
2


_T_202BankedStore.scala 137:24@z!
B



_T_252
3


_T_202BankedStore.scala 137:24B"
:



reqs_3data


_T_252BankedStore.scala 137:18Ez&
:



reqs_0bankSum	

0BankedStore.scala 159:17S24
_T_253*R(:



reqs_0bankSel	

0BankedStore.scala 160:17Dz%
:



reqs_1bankSum


_T_253BankedStore.scala 159:17R23
_T_254)R':



reqs_1bankSel


_T_253BankedStore.scala 160:17Dz%
:



reqs_2bankSum


_T_254BankedStore.scala 159:17R23
_T_255)R':



reqs_2bankSel


_T_254BankedStore.scala 160:17Dz%
:



reqs_3bankSum


_T_255BankedStore.scala 159:17R23
_T_256)R':



reqs_3bankSel


_T_255BankedStore.scala 160:17Dz%
:



reqs_4bankSum


_T_256BankedStore.scala 159:17R23
_T_257)R':



reqs_4bankSel


_T_256BankedStore.scala 160:17O20
_T_258&R$:



reqs_0bankEn
0
0BankedStore.scala 164:32O20
_T_259&R$:



reqs_1bankEn
0
0BankedStore.scala 164:32O20
_T_260&R$:



reqs_2bankEn
0
0BankedStore.scala 164:32O20
_T_261&R$:



reqs_3bankEn
0
0BankedStore.scala 164:32O20
_T_262&R$:



reqs_4bankEn
0
0BankedStore.scala 164:32E2&
_T_263R


_T_258


_T_259BankedStore.scala 164:45E2&
_T_264R


_T_263


_T_260BankedStore.scala 164:45E2&
_T_265R


_T_264


_T_261BankedStore.scala 164:45E2&
_T_266R


_T_265


_T_262BankedStore.scala 164:45P21
_T_267'R%:



reqs_0bankSel
0
0BankedStore.scala 165:33P21
_T_268'R%:



reqs_1bankSel
0
0BankedStore.scala 165:33P21
_T_269'R%:



reqs_2bankSel
0
0BankedStore.scala 165:33P21
_T_270'R%:



reqs_3bankSel
0
0BankedStore.scala 165:33P21
_T_271'R%:



reqs_4bankSel
0
0BankedStore.scala 165:33X2B
_T_272826



_T_270:



reqs_3wen:



reqs_4wenMux.scala 47:69O29
_T_273/2-



_T_269:



reqs_2wen


_T_272Mux.scala 47:69O29
_T_274/2-



_T_268:



reqs_1wen


_T_273Mux.scala 47:69O29
_T_275/2-



_T_267:



reqs_0wen


_T_274Mux.scala 47:69\2F
_T_276<2:



_T_270:



reqs_3index:



reqs_4indexMux.scala 47:69Q2;
_T_27712/



_T_269:



reqs_2index


_T_276Mux.scala 47:69Q2;
_T_27812/



_T_268:



reqs_1index


_T_277Mux.scala 47:69Q2;
_T_27912/



_T_267:



reqs_0index


_T_278Mux.scala 47:69l2V
_T_280L2J



_T_270B
:



reqs_3data
0B
:



reqs_4data
0Mux.scala 47:69Y2C
_T_281927



_T_269B
:



reqs_2data
0


_T_280Mux.scala 47:69Y2C
_T_282927



_T_268B
:



reqs_1data
0


_T_281Mux.scala 47:69Y2C
_T_283927



_T_267B
:



reqs_0data
0


_T_282Mux.scala 47:69E2&
_T_284R


_T_275


_T_266BankedStore.scala 170:15:d



_T_2845-_T_285
cc_banks_0"


_T_279*	

clock
 z



_T_285


_T_283
 BankedStore.scala 170:22F2'
_T_286R


_T_275	

0BankedStore.scala 171:27E2&
_T_287R


_T_286


_T_266BankedStore.scala 171:32+

_T_288 BankedStore.scala 171:21,



_T_288BankedStore.scala 171:21,



_T_288BankedStore.scala 171:21Β:’



_T_2877z



_T_288


_T_279BankedStore.scala 171:21F2'
_T_289R


_T_288	

0BankedStore.scala 171:21D2%
_T_290R


_T_289
13
0BankedStore.scala 171:21M-_T_291
cc_banks_0"


_T_290*	

clockBankedStore.scala 171:21BankedStore.scala 171:21F2'
_T_292R


_T_275	

0BankedStore.scala 171:48E2&
_T_293R


_T_292


_T_266BankedStore.scala 171:53S4
_T_294
	

clock"	

0*


_T_294BankedStore.scala 171:477z



_T_294


_T_293BankedStore.scala 171:47J4
_T_295
@	

clock"	

0*


_T_295Reg.scala 15:16R:<



_T_294.z



_T_295


_T_291Reg.scala 16:23Reg.scala 16:19O20
_T_296&R$:



reqs_0bankEn
1
1BankedStore.scala 164:32O20
_T_297&R$:



reqs_1bankEn
1
1BankedStore.scala 164:32O20
_T_298&R$:



reqs_2bankEn
1
1BankedStore.scala 164:32O20
_T_299&R$:



reqs_3bankEn
1
1BankedStore.scala 164:32O20
_T_300&R$:



reqs_4bankEn
1
1BankedStore.scala 164:32E2&
_T_301R


_T_296


_T_297BankedStore.scala 164:45E2&
_T_302R


_T_301


_T_298BankedStore.scala 164:45E2&
_T_303R


_T_302


_T_299BankedStore.scala 164:45E2&
_T_304R


_T_303


_T_300BankedStore.scala 164:45P21
_T_305'R%:



reqs_0bankSel
1
1BankedStore.scala 165:33P21
_T_306'R%:



reqs_1bankSel
1
1BankedStore.scala 165:33P21
_T_307'R%:



reqs_2bankSel
1
1BankedStore.scala 165:33P21
_T_308'R%:



reqs_3bankSel
1
1BankedStore.scala 165:33P21
_T_309'R%:



reqs_4bankSel
1
1BankedStore.scala 165:33X2B
_T_310826



_T_308:



reqs_3wen:



reqs_4wenMux.scala 47:69O29
_T_311/2-



_T_307:



reqs_2wen


_T_310Mux.scala 47:69O29
_T_312/2-



_T_306:



reqs_1wen


_T_311Mux.scala 47:69O29
_T_313/2-



_T_305:



reqs_0wen


_T_312Mux.scala 47:69\2F
_T_314<2:



_T_308:



reqs_3index:



reqs_4indexMux.scala 47:69Q2;
_T_31512/



_T_307:



reqs_2index


_T_314Mux.scala 47:69Q2;
_T_31612/



_T_306:



reqs_1index


_T_315Mux.scala 47:69Q2;
_T_31712/



_T_305:



reqs_0index


_T_316Mux.scala 47:69l2V
_T_318L2J



_T_308B
:



reqs_3data
1B
:



reqs_4data
1Mux.scala 47:69Y2C
_T_319927



_T_307B
:



reqs_2data
1


_T_318Mux.scala 47:69Y2C
_T_320927



_T_306B
:



reqs_1data
1


_T_319Mux.scala 47:69Y2C
_T_321927



_T_305B
:



reqs_0data
1


_T_320Mux.scala 47:69E2&
_T_322R


_T_313


_T_304BankedStore.scala 170:15:d



_T_3225-_T_323
cc_banks_1"


_T_317*	

clock
 z



_T_323


_T_321
 BankedStore.scala 170:22F2'
_T_324R


_T_313	

0BankedStore.scala 171:27E2&
_T_325R


_T_324


_T_304BankedStore.scala 171:32+

_T_326 BankedStore.scala 171:21,



_T_326BankedStore.scala 171:21,



_T_326BankedStore.scala 171:21Β:’



_T_3257z



_T_326


_T_317BankedStore.scala 171:21F2'
_T_327R


_T_326	

0BankedStore.scala 171:21D2%
_T_328R


_T_327
13
0BankedStore.scala 171:21M-_T_329
cc_banks_1"


_T_328*	

clockBankedStore.scala 171:21BankedStore.scala 171:21F2'
_T_330R


_T_313	

0BankedStore.scala 171:48E2&
_T_331R


_T_330


_T_304BankedStore.scala 171:53S4
_T_332
	

clock"	

0*


_T_332BankedStore.scala 171:477z



_T_332


_T_331BankedStore.scala 171:47J4
_T_333
@	

clock"	

0*


_T_333Reg.scala 15:16R:<



_T_332.z



_T_333


_T_329Reg.scala 16:23Reg.scala 16:19O20
_T_334&R$:



reqs_0bankEn
2
2BankedStore.scala 164:32O20
_T_335&R$:



reqs_1bankEn
2
2BankedStore.scala 164:32O20
_T_336&R$:



reqs_2bankEn
2
2BankedStore.scala 164:32O20
_T_337&R$:



reqs_3bankEn
2
2BankedStore.scala 164:32O20
_T_338&R$:



reqs_4bankEn
2
2BankedStore.scala 164:32E2&
_T_339R


_T_334


_T_335BankedStore.scala 164:45E2&
_T_340R


_T_339


_T_336BankedStore.scala 164:45E2&
_T_341R


_T_340


_T_337BankedStore.scala 164:45E2&
_T_342R


_T_341


_T_338BankedStore.scala 164:45P21
_T_343'R%:



reqs_0bankSel
2
2BankedStore.scala 165:33P21
_T_344'R%:



reqs_1bankSel
2
2BankedStore.scala 165:33P21
_T_345'R%:



reqs_2bankSel
2
2BankedStore.scala 165:33P21
_T_346'R%:



reqs_3bankSel
2
2BankedStore.scala 165:33P21
_T_347'R%:



reqs_4bankSel
2
2BankedStore.scala 165:33X2B
_T_348826



_T_346:



reqs_3wen:



reqs_4wenMux.scala 47:69O29
_T_349/2-



_T_345:



reqs_2wen


_T_348Mux.scala 47:69O29
_T_350/2-



_T_344:



reqs_1wen


_T_349Mux.scala 47:69O29
_T_351/2-



_T_343:



reqs_0wen


_T_350Mux.scala 47:69\2F
_T_352<2:



_T_346:



reqs_3index:



reqs_4indexMux.scala 47:69Q2;
_T_35312/



_T_345:



reqs_2index


_T_352Mux.scala 47:69Q2;
_T_35412/



_T_344:



reqs_1index


_T_353Mux.scala 47:69Q2;
_T_35512/



_T_343:



reqs_0index


_T_354Mux.scala 47:69l2V
_T_356L2J



_T_346B
:



reqs_3data
2B
:



reqs_4data
2Mux.scala 47:69Y2C
_T_357927



_T_345B
:



reqs_2data
2


_T_356Mux.scala 47:69Y2C
_T_358927



_T_344B
:



reqs_1data
2


_T_357Mux.scala 47:69Y2C
_T_359927



_T_343B
:



reqs_0data
2


_T_358Mux.scala 47:69E2&
_T_360R


_T_351


_T_342BankedStore.scala 170:15:d



_T_3605-_T_361
cc_banks_2"


_T_355*	

clock
 z



_T_361


_T_359
 BankedStore.scala 170:22F2'
_T_362R


_T_351	

0BankedStore.scala 171:27E2&
_T_363R


_T_362


_T_342BankedStore.scala 171:32+

_T_364 BankedStore.scala 171:21,



_T_364BankedStore.scala 171:21,



_T_364BankedStore.scala 171:21Β:’



_T_3637z



_T_364


_T_355BankedStore.scala 171:21F2'
_T_365R


_T_364	

0BankedStore.scala 171:21D2%
_T_366R


_T_365
13
0BankedStore.scala 171:21M-_T_367
cc_banks_2"


_T_366*	

clockBankedStore.scala 171:21BankedStore.scala 171:21F2'
_T_368R


_T_351	

0BankedStore.scala 171:48E2&
_T_369R


_T_368


_T_342BankedStore.scala 171:53S4
_T_370
	

clock"	

0*


_T_370BankedStore.scala 171:477z



_T_370


_T_369BankedStore.scala 171:47J4
_T_371
@	

clock"	

0*


_T_371Reg.scala 15:16R:<



_T_370.z



_T_371


_T_367Reg.scala 16:23Reg.scala 16:19O20
_T_372&R$:



reqs_0bankEn
3
3BankedStore.scala 164:32O20
_T_373&R$:



reqs_1bankEn
3
3BankedStore.scala 164:32O20
_T_374&R$:



reqs_2bankEn
3
3BankedStore.scala 164:32O20
_T_375&R$:



reqs_3bankEn
3
3BankedStore.scala 164:32O20
_T_376&R$:



reqs_4bankEn
3
3BankedStore.scala 164:32E2&
_T_377R


_T_372


_T_373BankedStore.scala 164:45E2&
_T_378R


_T_377


_T_374BankedStore.scala 164:45E2&
_T_379R


_T_378


_T_375BankedStore.scala 164:45E2&
_T_380R


_T_379


_T_376BankedStore.scala 164:45P21
_T_381'R%:



reqs_0bankSel
3
3BankedStore.scala 165:33P21
_T_382'R%:



reqs_1bankSel
3
3BankedStore.scala 165:33P21
_T_383'R%:



reqs_2bankSel
3
3BankedStore.scala 165:33P21
_T_384'R%:



reqs_3bankSel
3
3BankedStore.scala 165:33P21
_T_385'R%:



reqs_4bankSel
3
3BankedStore.scala 165:33X2B
_T_386826



_T_384:



reqs_3wen:



reqs_4wenMux.scala 47:69O29
_T_387/2-



_T_383:



reqs_2wen


_T_386Mux.scala 47:69O29
_T_388/2-



_T_382:



reqs_1wen


_T_387Mux.scala 47:69O29
_T_389/2-



_T_381:



reqs_0wen


_T_388Mux.scala 47:69\2F
_T_390<2:



_T_384:



reqs_3index:



reqs_4indexMux.scala 47:69Q2;
_T_39112/



_T_383:



reqs_2index


_T_390Mux.scala 47:69Q2;
_T_39212/



_T_382:



reqs_1index


_T_391Mux.scala 47:69Q2;
_T_39312/



_T_381:



reqs_0index


_T_392Mux.scala 47:69l2V
_T_394L2J



_T_384B
:



reqs_3data
3B
:



reqs_4data
3Mux.scala 47:69Y2C
_T_395927



_T_383B
:



reqs_2data
3


_T_394Mux.scala 47:69Y2C
_T_396927



_T_382B
:



reqs_1data
3


_T_395Mux.scala 47:69Y2C
_T_397927



_T_381B
:



reqs_0data
3


_T_396Mux.scala 47:69E2&
_T_398R


_T_389


_T_380BankedStore.scala 170:15:d



_T_3985-_T_399
cc_banks_3"


_T_393*	

clock
 z



_T_399


_T_397
 BankedStore.scala 170:22F2'
_T_400R


_T_389	

0BankedStore.scala 171:27E2&
_T_401R


_T_400


_T_380BankedStore.scala 171:32+

_T_402 BankedStore.scala 171:21,



_T_402BankedStore.scala 171:21,



_T_402BankedStore.scala 171:21Β:’



_T_4017z



_T_402


_T_393BankedStore.scala 171:21F2'
_T_403R


_T_402	

0BankedStore.scala 171:21D2%
_T_404R


_T_403
13
0BankedStore.scala 171:21M-_T_405
cc_banks_3"


_T_404*	

clockBankedStore.scala 171:21BankedStore.scala 171:21F2'
_T_406R


_T_389	

0BankedStore.scala 171:48E2&
_T_407R


_T_406


_T_380BankedStore.scala 171:53S4
_T_408
	

clock"	

0*


_T_408BankedStore.scala 171:477z



_T_408


_T_407BankedStore.scala 171:47J4
_T_409
@	

clock"	

0*


_T_409Reg.scala 15:16R:<



_T_408.z



_T_409


_T_405Reg.scala 16:23Reg.scala 16:195

regout2


@BankedStore.scala 163:19,



regoutBankedStore.scala 163:19@z!
B



regout
0


_T_295BankedStore.scala 163:19@z!
B



regout
1


_T_333BankedStore.scala 163:19@z!
B



regout
2


_T_371BankedStore.scala 163:19@z!
B



regout
3


_T_409BankedStore.scala 163:19O0
_T_410 	

clock"	

0*


_T_410BankedStore.scala 174:39Cz$



_T_410:



reqs_1bankEnBankedStore.scala 174:39_@
regsel_sourceC 	

clock"	

0*

regsel_sourceCBankedStore.scala 174:31?z 


regsel_sourceC


_T_410BankedStore.scala 174:31O0
_T_411 	

clock"	

0*


_T_411BankedStore.scala 175:39Cz$



_T_411:



reqs_4bankEnBankedStore.scala 175:39_@
regsel_sourceD 	

clock"	

0*

regsel_sourceDBankedStore.scala 175:31?z 


regsel_sourceD


_T_411BankedStore.scala 175:31K2,
_T_412"R 

regsel_sourceC
0
0BankedStore.scala 178:38Y2:
_T_41302.



_T_412B



regout
0	

0BankedStore.scala 178:23K2,
_T_414"R 

regsel_sourceC
1
1BankedStore.scala 178:38Y2:
_T_41502.



_T_414B



regout
1	

0BankedStore.scala 178:23K2,
_T_416"R 

regsel_sourceC
2
2BankedStore.scala 178:38Y2:
_T_41702.



_T_416B



regout
2	

0BankedStore.scala 178:23K2,
_T_418"R 

regsel_sourceC
3
3BankedStore.scala 178:38Y2:
_T_41902.



_T_418B



regout
3	

0BankedStore.scala 178:23E2&
_T_420R


_T_413


_T_415BankedStore.scala 179:85E2&
_T_421R


_T_420


_T_417BankedStore.scala 179:85H2)
	decodeC_0R


_T_421


_T_419BankedStore.scala 179:85Qz2
!:
:


iosourceC_datdata

	decodeC_0BankedStore.scala 181:23K2,
_T_422"R 

regsel_sourceD
0
0BankedStore.scala 185:38Y2:
_T_42302.



_T_422B



regout
0	

0BankedStore.scala 185:23K2,
_T_424"R 

regsel_sourceD
1
1BankedStore.scala 185:38Y2:
_T_42502.



_T_424B



regout
1	

0BankedStore.scala 185:23K2,
_T_426"R 

regsel_sourceD
2
2BankedStore.scala 185:38Y2:
_T_42702.



_T_426B



regout
2	

0BankedStore.scala 185:23K2,
_T_428"R 

regsel_sourceD
3
3BankedStore.scala 185:38Y2:
_T_42902.



_T_428B



regout
3	

0BankedStore.scala 185:23E2&
_T_430R


_T_423


_T_425BankedStore.scala 186:85E2&
_T_431R


_T_430


_T_427BankedStore.scala 186:85H2)
	decodeD_0R


_T_431


_T_429BankedStore.scala 186:85Rz3
": 
:


iosourceD_rdatdata

	decodeD_0BankedStore.scala 188:24
BankedStore