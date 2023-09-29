'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "47755ee5972b683ebc1befd3db8faf6b",
"index.html": "0a6915da2269f3011744dfddfe36a104",
"/": "0a6915da2269f3011744dfddfe36a104",
"main.dart.js": "26023f39f42334d55943127c796c4176",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "16c45238c2a55d9128cf783d65ae905c",
"icons/Icon-192.png": "6a9c40c39ea063d446ef9baf6b4f2962",
"icons/Icon-maskable-192.png": "6a9c40c39ea063d446ef9baf6b4f2962",
"icons/Icon-maskable-512.png": "4d321f61aa74420785771740edc09da5",
"icons/Icon-512.png": "4d321f61aa74420785771740edc09da5",
"manifest.json": "5b8344b76b4a9b6a22cbc66785821eaf",
"assets/AssetManifest.json": "0742b5315c1de558f0a69dae0dce95c5",
"assets/NOTICES": "0f42205374aad24e605d49c8fe65c932",
"assets/FontManifest.json": "feb83808124c2282654c10e4d3e2b33b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_remix/lib/fonts/FlutterRemix.ttf": "7a8463dd48e4ee9c6e5bb57651b77ae4",
"assets/packages/flutter_vector_icons/fonts/Fontisto.ttf": "b49ae8ab2dbccb02c4d11caaacf09eab",
"assets/packages/flutter_vector_icons/fonts/Octicons.ttf": "f7c53c47a66934504fcbc7cc164895a7",
"assets/packages/flutter_vector_icons/fonts/Feather.ttf": "a76d309774d33d9856f650bed4292a23",
"assets/packages/flutter_vector_icons/fonts/Entypo.ttf": "31b5ffea3daddc69dd01a1f3d6cf63c5",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Brands.ttf": "3b89dd103490708d19a95adcae52210e",
"assets/packages/flutter_vector_icons/fonts/MaterialCommunityIcons.ttf": "b62641afc9ab487008e996a5c5865e56",
"assets/packages/flutter_vector_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_vector_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_vector_icons/fonts/Ionicons.ttf": "b3263095df30cb7db78c613e73f9499a",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Solid.ttf": "605ed7926cf39a2ad5ec2d1f9d391d3d",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Regular.ttf": "1f77739ca9ff2188b539c36f30ffa2be",
"assets/packages/flutter_vector_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_vector_icons/fonts/Zocial.ttf": "1681f34aaca71b8dfb70756bca331eb2",
"assets/packages/flutter_vector_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_vector_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_vector_icons/fonts/MaterialIcons.ttf": "8ef52a15e44481b41e7db3c7eaf9bb83",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "61e4dc860fa0696b6aaf02a10988feb0",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/change_category.png": "c1509f7837923646fc66bc992f2308d1",
"assets/assets/app_style.png": "8a8f6d3f97c1772829c10f3d8bdfed69",
"assets/assets/img.png": "087209c3d0ce53220b8da374517be244",
"assets/assets/demo_screenshots/8.jpg": "1d76e11109615fccb46b2e42d49b4a6a",
"assets/assets/demo_screenshots/9.jpg": "d98f5806dacc247135426a06bf7eb321",
"assets/assets/demo_screenshots/14.jpg": "0daca88185115058b2a5a6a9d859ad7b",
"assets/assets/demo_screenshots/15.jpg": "295be4045182f251b9eada5ee3e7d810",
"assets/assets/demo_screenshots/12.jpg": "c4f393be33267a5ad1b45c439786615f",
"assets/assets/demo_screenshots/13.jpg": "eca5697b500766877edbcd286bdb1b7f",
"assets/assets/demo_screenshots/11.jpg": "7f9b26e72d43d1b3d0da2d9f8fe2da3d",
"assets/assets/demo_screenshots/10.jpg": "09d88e71f9b7a00ba97d2c2abe5c59e8",
"assets/assets/demo_screenshots/4.jpg": "90dc6055e4551178bad633bd079dbaa5",
"assets/assets/demo_screenshots/5.jpg": "12a5166850933247177388a8ecf395fc",
"assets/assets/demo_screenshots/7.jpg": "60c926776652eb45162773332a828182",
"assets/assets/demo_screenshots/6.jpg": "cf1cf02bb3bdb1b6c63f5a6da7943c74",
"assets/assets/demo_screenshots/2.jpg": "0d91767a7ae5c072c6a5439a8a1afbaa",
"assets/assets/demo_screenshots/3.jpg": "42f4433107e14503c12b3918f6e35de8",
"assets/assets/demo_screenshots/1.jpg": "1c3ef1ccd95a82cd7dfecc1a445d6e22",
"assets/assets/app_style_font.png": "1a9b20581d16a6b5a12151484cfd0bac",
"assets/assets/logo.png": "191a721d76a354ef6288c6e3db030c5d",
"assets/assets/translation1.jpg": "2d93570acb78f2ea0b425f27bccc75d3",
"assets/assets/translation2.jpg": "55b7c3f21d6174a3ab6c056df8a54ca2",
"assets/assets/tip.json": "2deb8b657d6e8d778174ef3e8da317a9",
"assets/assets/warning.json": "0c8a33a674fc5c805f1c0cb7f213b3fb",
"assets/assets/homepage.jpg": "1c3ef1ccd95a82cd7dfecc1a445d6e22",
"assets/assets/full_gallery/g_medical/8.jpg": "8c514393ac598e1e619ceabe2f306f2d",
"assets/assets/full_gallery/g_medical/9.jpg": "3d2f07d8abd54da8ae9ef43913189166",
"assets/assets/full_gallery/g_medical/14.jpg": "4aa1381ad6a5038f6cdbaa2cf2f48724",
"assets/assets/full_gallery/g_medical/15.jpg": "dae015ec7ca7d56c5810dbfacd118813",
"assets/assets/full_gallery/g_medical/17.jpg": "1ce88a6668407c8af251382f2aedb955",
"assets/assets/full_gallery/g_medical/16.jpg": "73bf95668cdc3042a80a0258562b582a",
"assets/assets/full_gallery/g_medical/12.jpg": "183b4ffe6212a27c234994bf8efde703",
"assets/assets/full_gallery/g_medical/13.jpg": "f9c9c2e4000a61067c09a2eea689fe5a",
"assets/assets/full_gallery/g_medical/11.jpg": "f10e64ac91ca5bc7e3ca67c8ae160c18",
"assets/assets/full_gallery/g_medical/10.jpg": "888970aef6b6add44ed7506d9b75c02e",
"assets/assets/full_gallery/g_medical/20.jpg": "223f0f6e6901cf359040e87901a39fa0",
"assets/assets/full_gallery/g_medical/18.jpg": "966466bfaee40a6bd0afaa0c953ab3d9",
"assets/assets/full_gallery/g_medical/19.jpg": "6477e2ad19071882f3a5a1b99b9b6bc3",
"assets/assets/full_gallery/g_medical/4.jpg": "161c501079d5019b7bc6c9caf6f68088",
"assets/assets/full_gallery/g_medical/5.jpg": "312c8969e8d61d83ea426887a7f5027d",
"assets/assets/full_gallery/g_medical/7.jpg": "4d9e1cc780dd5c2239005df673aaa19e",
"assets/assets/full_gallery/g_medical/6.jpg": "fcb4a05c1dfbe60e47eae97d055cee80",
"assets/assets/full_gallery/g_medical/2.jpg": "6fd645f1bd72edfcb327df4c01e249c2",
"assets/assets/full_gallery/g_medical/3.jpg": "4914669b1c35b83b66f121d40adf921d",
"assets/assets/full_gallery/g_medical/1.jpg": "0caa926caf706ad438504e1f488387ad",
"assets/assets/full_gallery/g_cart/8.jpg": "8bdc4ef95341212396cfdf3ac06392d2",
"assets/assets/full_gallery/g_cart/9.jpg": "9d068943da2ce8247e67be8bdc98f133",
"assets/assets/full_gallery/g_cart/14.jpg": "e39648d4805e8bf7b8ee3fa2e5b95898",
"assets/assets/full_gallery/g_cart/15.jpg": "41e7606f8d53c9aa10c7a8f349ec9797",
"assets/assets/full_gallery/g_cart/17.jpg": "07527eecc5549ce99987d4c0b0634285",
"assets/assets/full_gallery/g_cart/16.jpg": "2e923f999a3d1de7cdc045b710cd401a",
"assets/assets/full_gallery/g_cart/12.jpg": "6372cad2e2a2579fc2689458eac404c1",
"assets/assets/full_gallery/g_cart/13.jpg": "d7ee7c656edfa1600762e6568e3b7d6b",
"assets/assets/full_gallery/g_cart/11.jpg": "0074a0bcb53910db7c14f3bd21f3cb73",
"assets/assets/full_gallery/g_cart/10.jpg": "cf1989c4de9f2aab2ff3ff051813b547",
"assets/assets/full_gallery/g_cart/18.jpg": "f8e7862337903ee2f76204bd3a447364",
"assets/assets/full_gallery/g_cart/19.jpg": "07b3680962026e7173adc5100c0da464",
"assets/assets/full_gallery/g_cart/4.jpg": "a0a94a4948be85f61c887e9c897eb6ef",
"assets/assets/full_gallery/g_cart/5.jpg": "9e2341017059caccf148fc2f6336f0b3",
"assets/assets/full_gallery/g_cart/7.jpg": "b525d1474b5fa90ba32f2493f1b57396",
"assets/assets/full_gallery/g_cart/6.jpg": "4f22969b89e5702cb23f0a3cf9831de4",
"assets/assets/full_gallery/g_cart/2.jpg": "a605b70b2d21b626994d4379f4dd49d6",
"assets/assets/full_gallery/g_cart/4_2.jpg": "ddbf969688241cb2d35c0d9ed82c2c7c",
"assets/assets/full_gallery/g_cart/3.jpg": "e1f17f883e19702fa2ca0e09e8953c6f",
"assets/assets/full_gallery/g_cart/1.jpg": "4508f9222447a49ab2b5791c558bc63c",
"assets/assets/full_gallery/g_cart/4_1.jpg": "b7cf7394bfcf9b5633eb20aa2e248bd0",
"assets/assets/full_gallery/g_pay/8.jpg": "3dffc30bed7c5fd8722b5e4fa201a9aa",
"assets/assets/full_gallery/g_pay/9.jpg": "c330e519a6e4c32e95d689212fb54235",
"assets/assets/full_gallery/g_pay/12.jpg": "2732f8b98f0764ade73458c1e528e31a",
"assets/assets/full_gallery/g_pay/11.jpg": "52dd841ebcd975574703058f35b0c20b",
"assets/assets/full_gallery/g_pay/10.jpg": "9abfb7a73663566f0750f0978940eff7",
"assets/assets/full_gallery/g_pay/4.jpg": "59b873c2109eebcb262ab2e97dc9830e",
"assets/assets/full_gallery/g_pay/5.jpg": "10e949299a29f0d77a1cf63dfdf3c8e2",
"assets/assets/full_gallery/g_pay/7.jpg": "25d43106e76fd0f052b64b2fc989386d",
"assets/assets/full_gallery/g_pay/6.jpg": "72f5ae4869be9addaa75aa5341382820",
"assets/assets/full_gallery/g_pay/2.jpg": "6cdc4e19e0ac119702d708487eacb558",
"assets/assets/full_gallery/g_pay/3.jpg": "4d2f401ddaf77197c27bb8daaefed8ff",
"assets/assets/full_gallery/g_pay/1.jpg": "db57e863bb98e8f6d2b4df93d10f9cad",
"assets/assets/full_gallery/g_weather/4.jpg": "5cfbf4834835172972395e6d926e2299",
"assets/assets/full_gallery/g_weather/5.jpg": "600fc2e1ca92e75052969828963b9be6",
"assets/assets/full_gallery/g_weather/2.jpg": "f5484f0a7a035d6b158a6df81f0de676",
"assets/assets/full_gallery/g_weather/3.jpg": "8dae5d87a04fa1acc67c8cb925c659c1",
"assets/assets/full_gallery/g_weather/1.jpg": "a138f601338b6985581a20d9e9f955ca",
"assets/assets/full_gallery/g_chat/4.jpg": "486bc59605d79aaf1ed4a5782c169669",
"assets/assets/full_gallery/g_chat/5.jpg": "cc83ff0e9d19fa29c175bb8138998399",
"assets/assets/full_gallery/g_chat/6.jpg": "4fa73a7d0fde70c50f3315e7015a0a41",
"assets/assets/full_gallery/g_chat/2.jpg": "75a251c1c035373a81f61ad3221dc096",
"assets/assets/full_gallery/g_chat/3.jpg": "3dcb863c27dc4f614dd71b3cbc7855df",
"assets/assets/full_gallery/g_chat/1.jpg": "8da5ba70e9346667e31809365c19107a",
"assets/assets/full_gallery/g_travel/8.jpg": "a95e84a9f5492cf613505495aeabd0be",
"assets/assets/full_gallery/g_travel/9.jpg": "94a335ac29f296db6f6ddff9b72680d6",
"assets/assets/full_gallery/g_travel/14.jpg": "466ee4bc9a0bd5ec6a4dfbfd3af5699c",
"assets/assets/full_gallery/g_travel/15.jpg": "615207410afc814b868fdd648f89e444",
"assets/assets/full_gallery/g_travel/17.jpg": "78f892e0b57b6fa3c18c91426809ed05",
"assets/assets/full_gallery/g_travel/16.jpg": "f632dbfe207c0e6179ce2709530e5b9e",
"assets/assets/full_gallery/g_travel/12.jpg": "84abbe82ce5a0813460427681b602f02",
"assets/assets/full_gallery/g_travel/13.jpg": "b0a206639da9ed9fb5508ecc0ee82ae1",
"assets/assets/full_gallery/g_travel/11.jpg": "b280ad224fea5704bcb7a2e4105de8b5",
"assets/assets/full_gallery/g_travel/10.jpg": "ce11e159192ec6961d3ec73bb69e377a",
"assets/assets/full_gallery/g_travel/18.jpg": "cdeb6e2b25bd549557af85c131cba231",
"assets/assets/full_gallery/g_travel/4.jpg": "c41a10776acb3d77a1fec2403c9cd084",
"assets/assets/full_gallery/g_travel/5.jpg": "6227ebc04f8a9ec959943b2f85be5df6",
"assets/assets/full_gallery/g_travel/7.jpg": "05e5bddb588dadd2317af7f6dbf59b6e",
"assets/assets/full_gallery/g_travel/6.jpg": "8a6b254aa27c90a3b45182778030c8fc",
"assets/assets/full_gallery/g_travel/2.jpg": "9aa7eb5e57d8c358cfccc14f09d4bd23",
"assets/assets/full_gallery/g_travel/3.jpg": "82b4e04e04dc5018920158c9a7d936cb",
"assets/assets/full_gallery/g_travel/1.jpg": "a18864585065a8b8e2d2259ac5b918bf",
"assets/assets/full_gallery/g_cooking/8.jpg": "2843413882b16d777a9d2abd5d8699db",
"assets/assets/full_gallery/g_cooking/9.jpg": "cf45c080ce5974351cd084e85926ffe5",
"assets/assets/full_gallery/g_cooking/14.jpg": "d05242582a698c682107a744e6de1189",
"assets/assets/full_gallery/g_cooking/15.jpg": "67d6a3834e578507cf867fad26f81e48",
"assets/assets/full_gallery/g_cooking/17.jpg": "d3a1e6d44a0e3433d9af73d80fa05a40",
"assets/assets/full_gallery/g_cooking/16.jpg": "4812a11f50d2e2c64378a1567a52028e",
"assets/assets/full_gallery/g_cooking/12.jpg": "d0f4993d47bf581a5550169012ba9c52",
"assets/assets/full_gallery/g_cooking/13.jpg": "f0e12f6eac2373d2ba731d438942a7b8",
"assets/assets/full_gallery/g_cooking/11.jpg": "60c18dc634a6e18b216cac93ad5aa3dd",
"assets/assets/full_gallery/g_cooking/10.jpg": "7615431efb9ea287b751b06927e4fc71",
"assets/assets/full_gallery/g_cooking/4.jpg": "355f8456d38751fa5718da20c738831f",
"assets/assets/full_gallery/g_cooking/5.jpg": "2c44696f0a22ac039b63b7bd73f23d8a",
"assets/assets/full_gallery/g_cooking/7.jpg": "ea752a8161a694a1aa0ad0641c981ff5",
"assets/assets/full_gallery/g_cooking/6.jpg": "98ea805836aeef3c597afa1f071cc546",
"assets/assets/full_gallery/g_cooking/2.jpg": "72864dbce0be27da14042accb52498b3",
"assets/assets/full_gallery/g_cooking/3.jpg": "17cc76f09d61d70376bbffa353a63b83",
"assets/assets/full_gallery/g_cooking/1.jpg": "975bdcb3df6b495106f416785848c6c9",
"assets/assets/full_gallery/g_grocery/8.jpg": "1b63b9bd7f5384539cae3a2ba23570b8",
"assets/assets/full_gallery/g_grocery/9.jpg": "83f1cfece75e1862ceeadbc98481ca58",
"assets/assets/full_gallery/g_grocery/14.jpg": "1720ebb5a5375634fd7d4a89dbef0bd0",
"assets/assets/full_gallery/g_grocery/15.jpg": "b50567745c06e900e6883091e0b002ce",
"assets/assets/full_gallery/g_grocery/17.jpg": "b893dea53af0afe8b0acaff87edab514",
"assets/assets/full_gallery/g_grocery/16.jpg": "e46a90d33070551bdbec4acde97a3861",
"assets/assets/full_gallery/g_grocery/12.jpg": "447a06cbad0dce8b1bfabd6a4304435a",
"assets/assets/full_gallery/g_grocery/13.jpg": "9701a18c0720aaa94076144493fb5d23",
"assets/assets/full_gallery/g_grocery/11.jpg": "a4bbe34ee44429e10c18bc91da42d23d",
"assets/assets/full_gallery/g_grocery/10.jpg": "5d8a5cad0ae3cada0ed598e4a7cb6acd",
"assets/assets/full_gallery/g_grocery/4.jpg": "20a5a0b11f49c9adfca648a3e0713c13",
"assets/assets/full_gallery/g_grocery/5.jpg": "b606aa93071121ef2d351b0a34e0ebb8",
"assets/assets/full_gallery/g_grocery/7.jpg": "1410f5840fc6d194f3298c7b76312e24",
"assets/assets/full_gallery/g_grocery/6.jpg": "9abe01b8f114681b8af043b3b7079b4e",
"assets/assets/full_gallery/g_grocery/2.jpg": "a9b6c6d7c11126c02f0c4e61b752e631",
"assets/assets/full_gallery/g_grocery/3.jpg": "8a702be1433fb50398d4d1e08584aab0",
"assets/assets/full_gallery/g_grocery/1.jpg": "effd0cf22a52ccea38b834c2c9a1fe51",
"assets/assets/full_gallery/g_movie/8.jpg": "be641c3ab00ea3cdd6058b9f41ffcfca",
"assets/assets/full_gallery/g_movie/9.jpg": "937f8d527ca0663bb6d0508d4c676948",
"assets/assets/full_gallery/g_movie/11.jpg": "8f3b9a6401e597b79391625bba0ef959",
"assets/assets/full_gallery/g_movie/10.jpg": "df569ac733a4327df3d8215c8a42247e",
"assets/assets/full_gallery/g_movie/4.jpg": "a02f026d0b623a4d010b9c0c0a2c2b50",
"assets/assets/full_gallery/g_movie/5.jpg": "a46c8c23fb03a987741e0e6f01e59c41",
"assets/assets/full_gallery/g_movie/7.jpg": "142147a5bc492f90cf0fea006ba4aac4",
"assets/assets/full_gallery/g_movie/6.jpg": "6e0d35d3d0718c1f934622fbba79a980",
"assets/assets/full_gallery/g_movie/2.jpg": "dd74e90a80bee35684049a8fab55513c",
"assets/assets/full_gallery/g_movie/3.jpg": "ce11acda60b5b5111c6da9b47b7af48b",
"assets/assets/full_gallery/g_movie/1.jpg": "d942f36f78786d25ee11727515202f6d",
"assets/assets/full_gallery/g_bike/8.jpg": "1511f23a46ce27fd820dfdef254d5ea3",
"assets/assets/full_gallery/g_bike/9.jpg": "04a956dc63f2fdf90ffbcf9373bb3944",
"assets/assets/full_gallery/g_bike/14.jpg": "4815d20b983c896d08ff60bd897a0a2e",
"assets/assets/full_gallery/g_bike/15.jpg": "94939a442fd4facad0478259b6d06bd7",
"assets/assets/full_gallery/g_bike/17.jpg": "6e67fd318773e4676450977db6fa3eda",
"assets/assets/full_gallery/g_bike/16.jpg": "4a620aa3a295ab1cdfe0aab3baf55444",
"assets/assets/full_gallery/g_bike/12.jpg": "469c72919a23f14afd7f69384bc0c0a4",
"assets/assets/full_gallery/g_bike/13.jpg": "155bff36ddd14a4ac5c85613b971b804",
"assets/assets/full_gallery/g_bike/11.jpg": "7a1722df1c1241a188e64dccb2e5cb84",
"assets/assets/full_gallery/g_bike/10.jpg": "36997a404f1dd8e011ba1140dd59b918",
"assets/assets/full_gallery/g_bike/20.jpg": "b566ab47e0d470dc487b615fe38b1458",
"assets/assets/full_gallery/g_bike/18.jpg": "6e67fd318773e4676450977db6fa3eda",
"assets/assets/full_gallery/g_bike/19.jpg": "8b51849e0e9572ea8dcfa21c5ffe41eb",
"assets/assets/full_gallery/g_bike/4.jpg": "d1ec3c1d0cc0f43345478287011cb794",
"assets/assets/full_gallery/g_bike/5.jpg": "f5ddfe5979986193f2564977629b8d1b",
"assets/assets/full_gallery/g_bike/7.jpg": "7f98281e4f1c1378403346708d2d3c72",
"assets/assets/full_gallery/g_bike/6.jpg": "418c00e1e82358ae906d61d2a44ef468",
"assets/assets/full_gallery/g_bike/2.jpg": "88361de8a13059ed52ccb3f86383eca6",
"assets/assets/full_gallery/g_bike/3.jpg": "5efc7a9f08d5271ee8dc36c17575da5a",
"assets/assets/full_gallery/g_bike/1.jpg": "7a0dc616b6f40733ba95a363f1017329",
"assets/assets/phone-img.png": "43a45516b1694d6899fe0fa42901c8a6",
"assets/assets/logo_features/testflight.png": "764050e4f65415b9f5ff65cac97341c2",
"assets/assets/logo_features/flutter.png": "8695bc6f47af08380c64ddbcf2a1606c",
"assets/assets/logo_features/firebase.png": "c571d6f19c57f1665371d596f0b7d314",
"assets/assets/logo_features/android.png": "97e96e2bb3fd35774bb3a456292414d4",
"assets/assets/logo_features/apple.png": "013c1e0011a22059e3db478f026a7f42",
"assets/assets/logo_features/google.png": "d1e374aeb7830d79d13b3d69d40c2c8a",
"assets/assets/logo_features/facebook.png": "efd12c48f75a613003613245793b08a8",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "1165572f59d51e963a5bf9bdda61e39b",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "19d8b35640d13140fe4e6f3b8d450f04",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
