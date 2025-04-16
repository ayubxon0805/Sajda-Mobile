import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibration/vibration.dart';

class TasbehScreen extends StatefulWidget {
  const TasbehScreen({super.key});

  @override
  State<TasbehScreen> createState() => _TasbehScreenState();
}

class _TasbehScreenState extends State<TasbehScreen> {
  int counter = 0;
  double cc = 0.0;
  int allCount = 0;
  String txt = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Tasbeh',
            style: GoogleFonts.poppins(
              color:
                  Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Center(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        height: 350,
                        width: 350,
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  // ignore: deprecated_member_use
                                  ? Colors.black.withOpacity(0.3)
                                  // ignore: deprecated_member_use
                                  : Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Text(
                              allCount == 0 ? "" : allCount.toString(),
                              style: GoogleFonts.poppins(
                                color:
                                    Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.black
                                        : Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                            Text(
                              txt,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                color:
                                    Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.black
                                        : Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 50),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          counter = 0;

                          allCount = 0;
                          txt = '';
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.cancel_outlined,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colors.white
                            : Color(0xFF040C23),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        Vibration.vibrate(duration: 10);
                        if (counter == 100) {
                          counter = 0;
                        }

                        if (allCount != 0 && allCount == counter) {
                          counter = 0;
                        }
                        counter++;
                        setState(() {
                          cc += 1 / 16;
                        });
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Stack(
                          children: [
                            AnimatedRotation(
                              turns: cc,
                              duration: const Duration(milliseconds: 500),
                              child: Image.asset(
                                'assets/images/circle.png',
                                color:
                                    Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.black
                                        : Colors.white,
                              ),
                            ),
                            Center(
                              child: Text(
                                counter.toString(),
                                style: GoogleFonts.poppins(
                                  color:
                                      Theme.of(context).brightness ==
                                              Brightness.light
                                          ? Colors.black
                                          : Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.light
                          ? Colors.black.withOpacity(0.2)
                          : const Color.fromARGB(255, 12, 32, 92),
                ),
                onPressed: () {
                  showAlertDialog(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    'Zikr va Duolar',
                    style: GoogleFonts.poppins(
                      color:
                          Theme.of(context).brightness == Brightness.light
                              ? Colors.black
                              : Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor:
              Theme.of(context).brightness == Brightness.light
                  ? const Color.fromARGB(255, 180, 194, 236)
                  : const Color.fromARGB(255, 13, 30, 83),
          contentPadding: const EdgeInsets.all(8),
          content: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        splashRadius: 10,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? const Color(0xFF040C23)
                                  : Colors.white,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Zikr va Duolar",
                          style: GoogleFonts.poppins(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Colors.black
                                    : Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  richText(
                    'Subhanalloh, Alhamdulillah, Allohu akbar\n',
                    "“Allohni poklab yod qilaman, Allohga hamd bo`lsin, Alloh buyukdir!“",
                    () {
                      allCount = 99;
                      txt = "Subhanalloh, Alhamdulillah, Allohu akbar";
                      counter = 0;
                      setState(() {});
                      Navigator.pop(context);
                    },
                  ),
                  richText(
                    'Laa ilaha illallohu Muhammadur Rasululloh\n',
                    "“Аllohdan oʼzga iloh yoʼq, Muhammad Аllohning Rasulidir”",
                    () {
                      allCount = 100;
                      txt = "Laa ilaha illallohu Muhammadur Rasululloh";
                      counter = 0;
                      setState(() {});
                      Navigator.pop(context);
                    },
                  ),
                  richText(
                    'Аshhadu allaa ilaha illallohu va ashhadu anna Muhammadan abduhu va Rasuluh\n',
                    "“Аllohdan oʼzga iloh yoʼqligiga, Muhammad uning bandasi va Rasuli ekaniga shohidlik beraman”",
                    () {
                      allCount = 100;
                      txt =
                          "Аshhadu allaa ilaha illallohu va ashhadu anna Muhammadan abduhu va Rasuluh";
                      counter = 0;
                      setState(() {});
                      Navigator.pop(context);
                    },
                  ),
                  richText(
                    'Ashhadu alla ilaha illallohu vahdahu la sharika lah, lahul mulku va lahul hamd(u) yuhyi va yumit(u) va huva hayyul la yamut(u), biyadihil xoyr(u) va huva ‘ala kulli shayin qodir\n',
                    "“Tanho Allohdan o‘zga sig‘iniladigan (iloh) yo‘qligiga iqrorman! Allohning sherigi yo‘qdir. Mulk Allohnikidir. Maqtov Allohgadir. (Alloh) tiriltiradi va o‘ldiradi. Ammo O‘zi tirikdir, o‘lmaydi. Yaxshilik Uning ixtiyoridadir va U hamma narsaga qodirdir!”",
                    () {
                      allCount = 100;
                      txt =
                          "Ashhadu alla ilaha illallohu vahdahu la sharika lah, lahul mulku va lahul hamd(u) yuhyi va yumit(u) va huva hayyul la yamut(u), biyadihil xoyr(u) va huva ‘ala kulli shayin qodir";
                      counter = 0;
                      setState(() {});
                      Navigator.pop(context);
                    },
                  ),
                  richText(
                    'Allohumma inni a’uzu bika min an ushrika bika shayan va ana a’lam. Va astag‘firuka lima la a’lam. Innaka anta ‘allamul g‘uyub\n',
                    "“Allohim, Sendan o‘zim bilganim holda Senga biror narsani sherik qilishimdan asrashingni so‘rayman. Sendan o‘zim bilmaganim holda shirk qilib qo‘ygan bo‘lsam, kechishingni tilayman. Albatta, Sen g‘ayblarni bilguvchi Zotsan”",
                    () {
                      allCount = 100;
                      txt =
                          "Allohumma inni a’uzu bika min an ushrika bika shayan va ana a’lam. Va astag‘firuka lima la a’lam. Innaka anta ‘allamul g‘uyub";
                      counter = 0;
                      setState(() {});
                      Navigator.pop(context);
                    },
                  ),
                  richText(
                    'Astag‘firulloh, astag‘firulloh, astag‘firulloha ta’ala min kulli zambin aznabtuhu ‘amdan av xotoan sirron va ‘alaniyah. Va atubu ilayhi minaz zambillazi a’lamu va minaz-zambillazi la a’lam. Innaka anta ‘allamul g‘uyub\n',
                    "“Allohdan gunohlarimni kechishini so‘rayman. Allohdan gunohlarimni kechishini so‘rayman. Alloh taolodan ataylab yo adashib, yashirin yo oshkora qilgan hamma gunohlarimni kechishini so‘rayman. O‘zim bilgan va bilmagan gunohlardan Allohga qaytaman. Albatta, Sen g‘ayblarni bilguchi Zotsan”",
                    () {
                      allCount = 100;
                      txt =
                          "Astag‘firulloh, astag‘firulloh, astag‘firulloha ta’ala min kulli zambin aznabtuhu ‘amdan av xotoan sirron va ‘alaniyah. Va atubu ilayhi minaz zambillazi a’lamu va minaz-zambillazi la a’lam. Innaka anta ‘allamul g‘uyub";
                      counter = 0;
                      setState(() {});
                      Navigator.pop(context);
                    },
                  ),
                  richText(
                    'Subhanalloh val hamdu lillah va la ilaha illallohu vallohu akbar. La havla va la quvvata illa billahil ‘aliyyil ‘azim. Ma shaallohu kana va ma lam yashalam yakun\n',
                    "“Allohning aybi nuqsoni yo‘qdir. Va maqtov Allohgadir. Allohdan o‘zga sig‘iniladigan (iloh) yo‘qdir! Alloh ulug‘dir. Mutloq kuch va quvvat qudratli va buyuk Allohdan o‘zgada yo‘qdir. Alloh nimaniki xohlasa, bo‘ladi, nimaniki xohlamasa, bo‘lmaydi”",
                    () {
                      allCount = 100;
                      txt =
                          "Subhanalloh val hamdu lillah va la ilaha illallohu vallohu akbar. La havla va la quvvata illa billahil ‘aliyyil ‘azim. Ma shaallohu kana va ma lam yashalam yakun";
                      counter = 0;
                      setState(() {});
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: [],
        );
      },
    );
  }

  richText(String nomi, String manosi, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          backgroundColor:
              Theme.of(context).brightness == Brightness.light
                  ? Colors.white
                  : const Color(0xFF040C23),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: nomi,
                  style: GoogleFonts.poppins(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: 'Ma`nosi: ',
                  style: GoogleFonts.poppins(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: manosi,
                  style: GoogleFonts.poppins(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
