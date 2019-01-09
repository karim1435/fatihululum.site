﻿CREATE TABLE [dbo].[UserScores] (
    [Id] [int] NOT NULL IDENTITY,
    [Score] [int] NOT NULL,
    [Note] [nvarchar](max) NOT NULL,
    [AuthorId] [nvarchar](128) NOT NULL,
    CONSTRAINT [PK_dbo.UserScores] PRIMARY KEY ([Id])
)
CREATE INDEX [IX_AuthorId] ON [dbo].[UserScores]([AuthorId])
ALTER TABLE [dbo].[UserScores] ADD CONSTRAINT [FK_dbo.UserScores_dbo.AspNetUsers_AuthorId] FOREIGN KEY ([AuthorId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
INSERT [dbo].[__MigrationHistory]([MigrationId], [ContextKey], [Model], [ProductVersion])
VALUES (N'201901071127108_userscorebos', N'ScraBoy.Migrations.Configuration',  0x1F8B0800000000000400ED3DDB6EDC3A92EF0BEC3F34FA69779071DBC9E4EC99C09E81E3CB39C6891D4FEC9CD93743EEA66D216AA9A7A54E6C0CF6CBF6613F697F614951175EAA2852A2D4EA6C1020709362B1C82A168BC5AAE2FFFEF7FF1CFEF579194DBE92751A26F1D1F4606F7F3A21F13C5984F1E3D174933DFCF1E7E95FFFF2AFFF7278B6583E4F7E2FBF7BC3BEA32DE3F468FA9465AB77B3593A7F22CB20DD5B86F37592260FD9DE3C59CE8245327BBDBFFFE7D9C1C18C5010530A6B3239FCB489B37049F21FF4E74912CFC92ADB04D165B220515A94D39A9B1CEAE42A58927415CCC9D1F466BE0EDE272F7BE724C8366B92EE9D0659309D1C47614091B921D1C37412C47192051945F5DDE794DC64EB247EBC59D18220BA7D5911FADD4310A5A418C2BBFA73DBD1ECBF66A399D50D4B50F34D9A254B4780076F8AE999A9CD5B4DF2B49A3E3A816774A2B31736EA7C128FA62741461E93F5CB74A276F6EE245AB30F81393EB9BCD9BB4D56E17CAF6CFE6A527CF4AAE20ACA3CECDFABC9C92662CD8E62B2C9D641F46A72BDB98FC2F96FE4E536F942E2A37813452292144D5A2715D0A2EB75B222EBECE513792850BF584C2733B9DD4C6D583513DAF0415DC4D99BD7D3C915ED3CB88F48C503C204DC64C99AFC4262B2A6A35C5C075946D6318341F259D47A57FA62FF97BD51A6A34B683AB90C9E3F90F8317B3A9ABEA56BE63C7C268BB2A040E0731CD20547DB64EB0D011034777AB2260CD98F71D9335D0FE4365C5A40BA0ABE868FF9C85598C97245E888694D3A9D7C2251FE51FA14AEF80ADB133EB8AB19EA7C9D2C3F25910CA0AABFBB0DD68F24A36826868F6E92CD7AEE80EA759266308EAC06444EAAD0B0926B21740E67F5A2322FB57A804EABED43B2BC0FE81CC719493371AE7F2C3ABDAFDB308B4CAB8EFED9C7B23B25E97C1DAE386D87EEFC26DA3C7E5E471E3A36F77319C6E172B3FC7BB26E246803A0E0D90FA00ED24E81F479B5F004E9260BD67E209DC59EF0C93669213E2A1E612251A9719DFB422836AF6E0B1A26EB1A0CC0BF07AF7FEE63E1D04573B10C1E7DC80B73479FC8B7606D1AA02FC980EFE1D5CEE76BFF2EF742E3FE5D6EA7D668726668C6B2FC0E4192579B712CBE7145F19A2EEF701EAE8218D334EA0FEEA43D5FD039E04F74ED03F9AE9B1E7279438F416B678D9F35DA2B1AEF9EEA319C54196A3B3E0DD35514BC341C33FCF4F53E59033BD1903A51C39C93F9669DAB87432B5FE7F7B4E021F4A2749A7BBA88D32C785C07CBA13ABCFD1632ED7BA8EE3E0469F621790C63CE5C6ECCF6893C862915378CDB581BD7F683A90267CB2034C986D76F7FF2D50BD5EC1EC2F5925432F07D4277952076E6F1EB204DBF5165FDD7207D1A6C2953ED74B9EABDB7EBA72426579BE53DDB1087EBCB1B696EBF25E7C19CEA3167316BD519DE8764FE25D964F4E8C156CEE76CEEBA902A005ED0399ECF499A9E5366268B93641367DDCE1A4C7569D82F6DD75F7B4D3C0AC2256247E3CAD55DF989A0DC4A35BA5E2B573B6BDDC972493075B6A8BCE33AA3A46F57E59031AFAE7435E2B9D91BED4E02466BA3725AB0C533DFACCC942C3FD129C96B504A16D5CE8713B3FDF378933DC9732514C3B6CFA2CE756E3E9155B24650E1751A4309C51A2A629D332A1482994AC5173A91F20A9446BCD69544ACE9CD3C59233855D500B1D43A6D9AB40F5CE7EAF73029300291ABAA35E2C9351A624AB5335A4946E53482535EA7235417EBD808759D8ED2A5559A41CA65AFE9507D59DDD21DA7AB2B92ED95ADF738DC73AADA13AA667DD9D3C0BE9A5837AE0FE4AF6D0FE46F0EEE1FDEFCFCF6A760F1E6A73F91376FBFC77B013695DB3006E4E4639DF6AE5DE63DFD1E441BDF5DB95C70B14DDFD9B054AA1FE51FBB675CEA9F7F732B7DADFE428AEBFE7E2F37CA4C0BF0729DC1006DC5CABFA5A57F1DAC29C5342671B033E70437A8E4E527BA52CE6B20FBB758DD46BB3423947F00A0C33449141956E98ACA2792AE9278D16D7AB0538B327B2E9A5DFB2314363D9206D34A2E73AA380AE5F751F2981F1A764F1AFB5CE2CD12FC2A899BAD340D5E093FF7E30BD4B867F464132FAEE57D5DCA77DF791857A64F10A4A6195CDE873159DC06ECF031F4345EAFC3AF8229BBAD0DED42BDFC6F6D8CCBCF945BD1A23DF91AF467E5473785F214DFCE24A36E0A90B9C68B0B80A57B1C884FFBDB7E1BBBA351A740777051E1B0377E906FB801ADACD510922A00CB8758DB9B3D46474AAC31D863DAA1D56C8FD110AA8B317B0C8A8AB5A6534E763B6DA76CBD0D8D276CA1F184039E3FD9DC18257F5FAA44F74B9F6D9D3BD97D369BB6360A8CFB11CC523CA9021C165E2D175F21539C571FB7EE53B2D4026DF74E1DFDAFC14F24488DBE347D99802AAA48864C6903E2358E7039DD7F18973ADD271B2482A572A0CB045077E86C06B1BE3DC211EA6E0CE1BA86B388A2AB9BAC59FC056FFF433C01FB5DF88548DB75DB73E6699846BE60FDB05EF728609A357D6D2503A780EE72A5F90618C1A3BB3811AF6A739F0DFF37C039D8F1DF00E768D2E2AFE182D161D6DCA2FC9882B7FABE5C0AAE4250C16CF07B207198DFA7F8B05E2E5CE373DE7DAFBEA5C521E1C7C6EB7EBBE029DC6040777E8F07030E4A3BB888C5AE1EFF6C745DF592ED6FEBE8766AE19EA76EA790EB5EE7ED9481F6BF9B32A8E3DF4CE1AD0EFC940DA88D84DA965B4489EF4876A4CA65B25D3C5CD5FCC7C6A4F755CC6B17E3ED5592F9D8DAC67BD3D9E6E2D0C9475895D5A813713BDF923A42B545528BE3CD2224F19C8831B33F16527F1ADEAE3890B09F49EA271D4377197449D27488D0402126A5ABA3834701E6C3D141086307FC1DB45ADDCD40FFA485AF411D89EF376ADF842D14DDDFCEB99A0729E519D1DC5415DE704F04F043C6029A86392EB057CFF95FE8FFEE9465ADF6AAA63F68BA2DCB8896C1A69DCCBED9DC6783E0FB791DFDE29FD98DC2D790D6A56260289453ABD484ADFE45370344FC95B256B27E715F8E171959EEC9EDB7B2264B0C5A2D4EB1F150AB94FE5C6CE67AA484E3FAF9DB2628BAEB02E5960E2A2A30BA5E87F36A999C26943EEEFA670EEF86B23BF34BF401B08F0C8FC578C1F52973F45DF569BD48E12FB4958A7CD6EDF8C981B82FD6A2E19E08601BAB55E07DD7B56ABD6CBCAF544FAA92ABC93C0EBD2C209F8BF1E6295975955BAC6D571867CFAB90B2B58F44885E3257B596446C42E1F399B050EFF857C2C94CADD4CF64DA17AE07487E57D48419FF0AC18C559A31CBBFE82411D9D8DCC5216BB55735DD86202C5792AB14B45B811E6DDAB4BFEDC83FD6F38730FED277CFD6ACC6FE74673556BC5735DD06AB9502D795D5EC04B5C7D32BED670856B3F7DE08E22F1403779A170DF744003FEC15C0DD68502FEF768A003B0E77552618165E6CEFC364D4E351A2BD77931FE4F21C8C510FB93D51B5835B6A20370D612DDDF1AF04670DB55277D9D0BEF0E2B8E1DF6963371C36C613B1DEC9CADD7BF63B76FB0CC70D8AF4BE2B3E136C0C5AAD6E5FD03F7163E9CD52D4A3E5E4E817E979143CD64FC5B47EBF4182DB790FA474599075F442E9284A7C99189784A59C2C8FF0240EA320642E6B79B2A0A3E9BE463DA9C17918872CED67F1F581F9EB8F2B52437EADCF3C9F63C3BC2B11451DE61D892C635F6F61DE3F3E3C90380DBF12DB79A70B6799A4A1EDC4DF04CB55F0844DBDFAF56FE40B555152810BDE981BFC9AB07DADF8F64FE66F2F49FC42D220FB22807F6B6E72BA5945E19720ABBEFFA961722817D39D58E8E03F5AF09AE804DA91D16A0FE52DF157A905D931D7FBCD23C658F0CC1DA769320FF399D02FD4EBC401729767F16262F38240ED962BDDBC5FD2990A295FCCA9B43E9AFE411B5103F82ACA5C005F253890611F4CD51DFE637C4A229291C9F19C4165D913D279B0D0773A3A5B0BB9842A0584E50F0A0396819925A50EE34CD720C298B90844162350DA5AEA1F0CB7AA17B5E6945039CDF64B0BFAD8742F26E8D0D1A87A53A6AE69A60E6702DB3570A39C3A176514248FAEC022E5EB083D72088A0FC0B2408AC9A675D18E01C1991982F5C029B0E91875921E84E1E4246306C904266493441ECF9AE824EEC034668D40F7F7F67435A2ADBC025018465201136AD3719D8F6F2B0C2366FBC1080BA6FEA9A9CA232DEDF9044CEE6C21EABC7008D0F900EC01CCA04DAFB5BFE4F678A3518942523175E48F76FA923F16D982B6034EE44EA8397296178CAE48CA979AAE759E247B6641D25C99B96FFB8A3588F6003C06D2C06A9B2A120D6C89BFA49C21382FC00944440EAB9201B9B0189CB46CFC3C06E13D08934174D8212ECBF58F667690834EBD7199FC38C0B067C08E8C26A23E28A389A418FD214DCC5082B20394AE4460B1225F90037F41990E472FC274A487602B7DEEC72FBC846C330D2C808AADB63CB57B024BC77B38B6DA295125A5BB6D34FC20C2AA8B2D69A7C41584F590C6A75D1258D2EB034D6C8089AC0E9CB573420B427C40E6DA2DB1253F7487F202F2EADDB6EF5D9467F6907B9722B15BAFF72EF2CC0CC16EE0148C9EE1C4EC441875C154453569CB2464F6A20C7C9A7007241980F7009C054CFFE8D94A7E0AB2496C28EF426E5B8AC90F5122428C7B66F62AC3A46919508449E31F3DAB69D97B30F2E2A97C6A0A0BE9ABECC519FE8EE80EC8340CF901F80D23884DD75BBE61849E4C3628EEE8DBC89E7DB5D4D7997780FF0CF80F7348C06863D3BB90AA623B17DD7A26208C4F4C698104F384987FCCE1E61B4F28D4CC83FEBC6870340660257C8277409E61E99A6C080EE66EF2CA5250D6273BC9B97DF9D6308E811913A095959C9353A96D8545F5C43618EB18B2DCD44C23E488B2674A3C3B8EC88E526AB1B1F1233A8401381125CC4EECB55AC6045474E1E91304B128A55A71908B68E60501B890B5606CFC87E26FC30370560337698811A75BFF4333601E6563C52372960CCF0C2825D810800BB90C46CD8022FE360C00E73A68CF802271BAF53F000322A9AB304669CA6325D8D5942C71F6CCD89004CB92DDB7CF94E671D870069AF9CA8939CD34EB8CC710171A5A1C3FC63B86A07EE17243CAD1E170C581E603B0D141B7CF9028FE03A88928616CFA2E33766C4742EA41F7A8E43244E0EB370ED06D434FB72086B8FFE1AF42F0591A800FF199B0E99CB51A8811CF7234591204DAA20A4A3EB9BCC9F3223C434F09D0E11411D869918442E50706F286644AA8C6747256A57BD0A25A3469A8C028AC08CC4CA343118D380D808A74163A8CD2C0D8D05E0B0285800191A2CDE3E34E3DD0E0784D0304EE1DA635E7C50D6DEB2014AD7D5DD508A37200078054754D500A7F4C1D4451E1409EC211C64C9EC2A1A4016CE9A7A0812A2B1CD0E2F7DA66ACB858B460E5E2C2510326D435F18D6863D5D947AC6DE2E13269B4CEC39259AB010C4FA0A4C110149EA6C92E1551689295E342D3E4942976F58991CE040D6078924C0D86606A6900C01363680084A372130373BD08E260494B6D02D3C0BB20DF0A3B8F2ED0A59C1513E1535DB6236199920662CC6E518D46DE4FB45DD6329B85080EDBC766F2E06D26464E9F004D8921C1828C3D9C6241C0BBD80D4D3300A7451060403B62F7599063FA61C640A3FE551A4271FF3233405BAC090AC403C846ED3E78313E1D18391ABE2EDBDA800076015B684F47DB03A30539A7ED584D02C01090ADE36B5AF276231E6895CBD1C3C0B00DE1C512D27080B18034A6C019A000430755C036C396825AC171E361AF0ACA60E0AB347244EB34C11962ECFCA0611ABBEE538BE02C39D67618BBE44FDBC332971E2807468E4507CAE802F181E298C123020AA1474A8BAFA0A3836DA23110B8D66AB07D93560A97326DD466E28201556D37E97EE92B85F11846DC406130D0A7E5887B27B21C5C62D04AA1F01350A35402505A69A54AD008A2959648779E05E93D667D0AD08008D9BC0F84440888C3160514C200342F0E7D38C9014F7D905AB2AF7E2B82CBFEF508BD0B843B4F80FEB8AB3E07661772690CA813B93213A0DDC60CA95FF1AEB92B379DD321272BFC5CAD385A753CA52BCE557D1C5980373481734B837FAD7CF4C03D6CC5ED0B37C635411B683A244BBC794E505751742890B368C7D981BC43ADF8AFC53C01AFEBE933D4E0A9280D04F7551486C0ADA986E9C0FD12C5892831EECE2DFAE341009F98FDE56472A21E73226F94765C135FA0DE7102208EB1DF59E0C6DD8659D09DB670E425B7AD2EB320B968098038C69D67017BCF4E9F0A1BF721F926DAEC40242A0EF56D81615A1A9C859A27B98DB6A93F2B01E89C669F15596F44BD5644FDB3BC293029A0A8874A83E469C324C06304008334784FC8C4C4FD27C48980B4C826389E35D3F28584EA7EBEAA3B9CDDCC9FC832280A0E67F4933959659B20CAC992961597C16A456995D62D8B92C9CD2A9833EDE98F37D3C9F3328AD3A3E95396ADDECD66690E3ADD5B564F7DCC93E52C5824B3D7FBFB7F9E1D1CCC961CC66C2ECDB3EA4D50F544574EF048945AB6BF2EC879B84EB3D3200BEE0396ECFD64B1D43FABBD1190EBA9B223C5E140275D796F5536281F760272C9339CF63050F5349ED391B123783E4802598BB5A6B4F1CD3C888235F00AC949126D9631EE8382B7BECAD79BD8FE0ADCFB7108C27BA62218A15887753853E6419DF39936E90AF3AB44B42371AD99792032AE8ADAD0D9D4BA1F52DFF2C7A9450045913D8C5392CED7E18AABEA2224A9C21EDE4DB479CC5FAC14615585F6702EC3385C6E967F4FD6CA1449150EF08267049E58D1EF22C160F19722345842B1C3FC67F45CA3C3128AED61D12D4E85531439E123BEDAA3E0245639CCBD90F4579A7C4332E0064AF2A8208D9270B0908192EBA878624D2264556A0FE913F916A8AC5A968D46FC621A96B3E42DBCEE5A485DAC653F12D797743B0DD35514BCE87BB554610FEF7DB256162A2FD9E23E40E69B75C81E5894A6AA2AB587747E4F0B1E4275A7138AED61E5AF053EAE83250852AF75D88BBF85EC694910AE5A670FF5439066F9B5057FED5104AA54B94896C7907906338A9EE62F14C93246ADDD86F43B5B06A1B2CA8A22471874777908D74BB200800975F650AF8334FD4675855F03F6049B0853AE715F29743B5CAEE0E552543960F994C4E46AC3DE975290142B5AC1436614FEC265FD24E7C19C4AF7B3983D63B85057905AEBB08692F997649351CD85F1F3E76CAEAC23BDBA056C0067B5CE1EEAF17C4ED2F49CB228599C249B58D19B806A87354A774B7DDBA94B47A35B00FE84DD150DDD23DF5DE5B080D18FF251E6C85209E7A8EE3294B9E5565277EB624758F9A37500B0A27C340C55FA517831144090EC8C0470CB7E38263F5BA9E2A32A7410FF490A9C29EB523748EA98B05CBC38143F2BA17E7E4ADEC6B147A9B6C6B988CB942BDB42602C78166E365E8B962FA62F4C39A07DA7857507B4ED38B12B7B95347DD214AFBAD8658E96F7614C16B7C163AA4E9458E380DD3AFCAA1D26AA4287131A6C2BBA686327AA336249EA139A27CB305F5E2D4EEEE7A42D099ECA69BCBBF0C140590820BC2936C1A142A6D0893CAC3F95D06599CB12D314776765DDCF6EC92C050C7FED8022948F88E54A8F751F3C87C0B2623AB46D3F5BDF2712A4AAEDAD2C73E15DE9B1769985A52A17CC989FA9AEFF89E5E3D600B7C5CBDC39DF032383806CB81869D80F0B7F08BF1040EC09C54E16F2080627D7FC7F39C48CC00A83BAF477B1C2F0C0FB6E561804066EB4A39FD3B2AFE142358F2A552EEA2F6FF31B79515560A1E23B638E2246A13B43C0802CB8006B38DED3A9EF7B36BF9B336FA5EB0E62B9C3CD5DF8ACEA9C45D177B61074DF3EBF4232CFA7D04D46C220FA35B095F98B244E42721A6D8D7675A84D779AA1B02C886568DB8F342BE28BA4FB4638E408877195A8261F5ED2A78D665B465821AEC4832D168766639235B51EEFDEE7ED3A82FE4C52409717CA875D0797244D35835E55E8649715B3A42B86595302751CE6CEAC303CD4C9F9824E4C34D5E296CED8BC9FF5C5FEB773DBDE127590A01257D2D4F9BBDCE962683B62A1E7D1BDF466739FE928D5A54E5710BF681C57158E86E9EAA82C0F0AB59CF3AD853ADD0000E5C1B29DC68C6285D3F657E64756763F2C6D320EEB6F9B201FA00CAA2E75582B491644050ED7EB70AEAE1BBDDA11F6CD53B86274C1802BF5DF65BCCB351AF1E8AC808A890B5B68A0C6E643706ED148DF37A50A07891887106B09C50E721A67D5D65C5A3E1C2103831F93C0A194D9FFA5D583BC088043397B5E859493B4E090BAD86927D276A111AD3824ECDC75B9D5393EDDD79AA16DBFCCC25AE8EBAB2E7583F4218CBFE89078E968C88DC4D7BB92BBCEC8EA4E6E43DB7E577539281DCEC88E22656CBA878B0731EB6D8BEB0763F37ECE24AC4FC5A41AC04B088350BE6F20C2C0DE3C30E3015C3B54A50E2E5FBA2F9473C008F7A7837CEC9CF5CC3C0A288A000DB3AA19CF4AF07CD9D0F1A2C1ED92E1BB309868A919D44FAADE8B92EA77959AA1488B20E56BC847CDB22FE4A34D8B140D6A9E04FEC974525E3253F2BEA41959163AC73FA29328CC6DABE50797411C3E9034BB4DBE90F868FA7AFFE0F574721C8541CA1368141920DEA98F3D58A5843878C3524290C572A636774F2CC1A0A4E94292AA025F2B6E994A3E88DFC88B4AE292794C2F7B1CCED4868700C7F274E7219BD57C19FC4228D1D941F13A60417E71BD1AA693AB4D14B1E89FA3E94310A57A1A1490A57907F1D7603D7F0AD853B7C1F307123F664F47D3B7FBCE3085532C07CC646296870C1A21898BC24C03F4ADD75D254361E293E9F06FCBE0F9DF9D414997FA3E0056B1C60DC0F2F7581A6049991484F97444494AA0D01E4C5B46D5210979133A4212B226748454E44DE88E8F9831A1C3640B7EEB0214ED8D9F8B78419E8FA6FFCC9BBD9B5CFCE75DDDF2D5E4E39A6E29EF26FB93FF6A476D6EFE56E59D0D12656B190741521EBCFED99D6F2A077C0F8BABCCD5E0BEE8ED252F94FB6008A90BEE4D6D66DCA7349332277880C71328E00BD60A2707F16F03AF4E9FE0632F11322878C04D4F9EE001A89A39C10348256F423702EBD912BAC1F32A828A8C098635FBFAED4FAD800A11FE1CFA7DE8BE07C9F9123CAE8E225B82078852B604BFF0BC4CA19E16A13D2C200F42375E56F31FB4470D4878D05EF5A9531DB82A1E65CBBCF8D5E422FD1C87FFD8D08A5B3A1B8AFEA1ACAC2EDB7C43BE819D3D6695FEA42DF43FDED4ABF227E43FF0B0D0C50408CEE05C8EDE7A36819DE587CA11D0B461EDEFBB9B40EA109F8EC7AF32C6A705C7F2A67E8F2BA35A3F75DA04B7F364D90E3B4D76581E7ACCF04E1D8E40339404F5E716E6407891B53B4054C910FC186CBAAFCF3A154237D5454E82E063AAAA4C08EDB5A00BD5F0D34A95AADC7E5B888DB2B1DF8D77DBA6A80E672E6B5104A730B013477AF282667114F6BB5597D910BC0891AE0AFDB8766531A9423F172E4866829DD5FBCA2407BED53E25DF417B061343297F68909E34487B76075218EC2CAF0BA910DAEFE17202840E06B81FE7A2AD717543FA023B066FC85600B4B836652300BE87637E9B97918299E79391340ACFB077827BA0B4073B2B13EDDC2DB671DDE671E3171328B4D7448AEC09ED45FE4E70B7396D811D9F63C90A804FE18C04CDCB625CF6B772142DB0E14D87A02C92E3606745571127DE7E41F36C093E8ED1DB36ECD85B65B1DC053BCB051EFD05BD9A67D9CF321D4257C7B3AE8C5EE542F071B926674270341A8A8D3BD90D075D715D6E09D16C063BBBE2A0FB7B9FE65A24D1C0CECE973F155BF3DBB45E77B0CBA6AB1CAA521D78184B95EEA03F4632A50CB0E4263C4780055B898D7BE4AFEB3A80DBF1F6B76CD8892BEA7405ED3728203F0107F61025414B704AAC771778BD87715CA301FD767C7A8DC5F0377329CC3D3DF1A8D5D6617796AE330374A1AC47262923BCDDD6206FD56901B20EDD3BE6AD3A752C641CE8EA8360E186DE657D2141FC768B0B0EDD6F5E590043783F0257D9007CACA93A23408FA4607FB62645C9EAAEA4009688772DEFA58CD4EF71F2F090F79DD58E79FC7C7BD5A18C9D77937EBC5527E95707DB77147EFE620ECA987B0FA0E490FB1E757434787DA7DC05A195DFCC886CD0ECAF7E7DDA8FD33499873902BA0DE70E89E23E8B17397A429877313C16A9BE57175E6EA22C5C45E19CF64CE74E4B87F0313E2511C9C8E478CE63D94F82741E2CF419A5D82F501C843067090DB15CC6E40F5A0794690873770D031642C30287423D1B01550463661F8DD4D12B1F5A32231B570552AD39252B1233FE074669D39DE9FDA3C359055D99E6A669389C090CD3C0473C06F20E7A2152A45E112A2951AE2C1B847FF4280E1117A0B61F5E421FDAF6CE4A364F6D3ADCDB0DC24C3C9EA2F049C799A908BB50C4002F93C9B6BFB777A0514E83C4336F3443F3C504E8F3957DC8936A8036DDE18F2F0EC200CC1BA930CDFB112538E9736F6011062FD8F5558F3CF1A6F783E79F1E8ED2BE158F91507B407DC19ADC5B57144A0FFC3BC00DDF914E3D6908558C80D87F5DD80BAF58D3AF239F185E7F043601E429AD81F8A4F01A1F33A394010032A754A53BCE2AF8A38DA3E515200FCB980E1FDBE19801D50E37A6D9EA2183C7338C58BAF0780B89518AA2DD962BD81B9A63132A9C3FC62E5106E6922165893DA38CC35A315649E26027D93159E26241D9AA30297964E4D264784E19509EB830CB76054A614B87DEF91D15BBE8C173982DBDA8DD7516B279307964CCC4039EC62E788A403A1181B268D779067D5379648C524A1D2095FDA858458B4AC3640EAFDC75F6B1787E78648C54059779BDC1E98597EA38381107A174D7B9C7F410F2E8EE82245F14E80DD251F1CE161D5106D599DDFC50F0D73487B94EAC831A3D4A9F06EF013192523AE28BE5BBCE09E687B247274B4446C05FC6E8B49A7B922B5BE426C7C53E3047353CBC3D085B550189CD1B9418ED2971945431084BD56194222242693FEC647EFCDB3B3F995EB41EE14E25C479DDE98F5B0AD4AB235644EA09A5C38825312E4D924B52452F9C647AB4D33648C74D34991FE575E9736856CA53DB6044AC236E440A0AA5DF3D2B2131470859E120A37E5909EF73005692E3A4CBB060FC56AB0D25FBB20BC921DE925548A9EAE7CECB95D068A4AE9B7DC810D9DEA6E3214CD242E85A1E7E85F297A3E2D297715A0CB5934CD452452F5CE5A6D47435559B5FE1D5FBC35EAB1D465609F162F9FD066EB59642CB207B31642BFE8EEDD70DCFCC8EC3880DE783EB85B9CE62E9E9D8EAC0A93CF3AAF157F11AADE25B3D9D9C55D1779AAF3A7F2AF668BAB84F28E579045F511B9214B032297D88F608BD1BB116ECA9FEC0A2AFD21AA6F753D6407D1CA7AB2B92F105D9D405106FA575067C63EEB68841B3984AEED8004D23AF41A6905536C3E71E3E1A705E0C416635CD606B4F740D745D05812F6B6DBAA81C52813EAA3AB893A2DAA297C24F4DEFA2A800E1E7756E8C55381F1819ABF8C6CC5885434653DFE5CDB5D6615901F5C2EBDC06C67708E3B8F827E661F11BDFA68E855B31AD47A10EEAAAAAB65834A295535F3B622DB884EA0F2C04806489D3A580540D8A02E18BE6EE04B555EB4BA8833AAAAA2DF84339EBE8DCA17C00F5277F634135E9B8A7934DAA06E9267CD1DC9D60FBD2FA12EAA08EAAEAE65E04B388D68B5007F552555B080BE90CA18B0CA91A141CC217F6E2A3417434890D586408DA15A8B1D4817E13E1535D7741020265FBBAA26CD10EC5424D6944AE7AC4C662B9AAD0CB43B319B61C100F0DD810322F232CEB611CD9B2CC305054B9CA2100B5DD072D076EC3544643BB552A89DA5949215E66A66E1DCADDDCB6C520C5E064608468ECB2179A8A9A5FDE8817F8199469791A02753DADCBBE8626479C02433384A4BA2328B55075F5BC555DE8616852902438363C8CB2F3E094534231BAAAD4E3F0F8BA300D0FF283F0B0DE0618A41087068D100B53EB4A3DE9F4C5475514F91A124A342CB2CA0FC57A1C9814EA63DADD7C53CB6137EC302C8C6078F48A178AF53C38399AC2A08841F116DE1531C918A12962456DE7418B5EFFC088D1A0002FC395ED1F79B3B2C81B358B03084E4CC08DDD3B2DC54394464A5ED979C09A37353066B3C7B597616BD69FBCA550EA430869DEBF4DC744C807CB97481AE08C0878AB429A77834FAB9F73856E77E33B9358EE75C0D2549A476D704CEC46B32D4C81EE41080CBEC1CD501E3660C5E4E3962A0C03D70C937973A1B43BDD35673788E2668F380965CD0298A32C949AE80C182B39A1A50ABF83CEDDB29A06ADFB6E49886B06C91C6BA1740483461C888091DBB81A751F82BC7783B671BE732B55DD3530CDC905D2C3CC9E305D56A9AC91014666AE974915DDA9AFBB6440946F70DC00F52D54D782F4AC4134B632C96EE53650D51DCEB8E5BC28A03F2967058FC595405E7A38FBB489598E68FEEB94A4E1630DE290C28CC95C7253A8BEB9881F92D25B42C1A8FC4449497C49B2601164C131DDC81E02F6AE463227699A9F897F0FA20DFDE46C794F1617F1C74DB6DA6474C864791F49E63AE67561EAFF70A6E17CF8317F0232F531048A66C8325A7F8CDF6FC26851E17D0E243F464030778E225B39A365C6B2963FBE5490AE92D81250317D9517CA2D59AE220A2CFD18DF045F491BDC28FB7D208FC1FCE5BA7AAB1503D24C0879DA0F4FC3E0711D2CD30246DD9EFEA43CBC583EFFE5FF00F12A7C5EE1A20100 , N'6.1.3-40302')
