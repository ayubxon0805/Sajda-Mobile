import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sajda_app/app/constants/globals.dart';

class Ablution extends StatefulWidget {
  const Ablution({super.key});

  @override
  State<Ablution> createState() => _AblutionState();
}

class _AblutionState extends State<Ablution> {
  int currentPage = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (value) {
                currentPage = value;
              },
              children: [
                ablutionSteps(
                  0,
                  "Niyat",
                  "Tahorat olish uchun, iloji boʼlsa, qiblaga yuzlaniladi.\n  «A'uzu billahi minash -shaytonir rojiym.  Bismillahir rohmanir rohiym» deb, niyat qilinadi.",
                ),
                ablutionSteps(
                  1,
                  "Qo`llarni yuvish",
                  "Qoʼllar bandigacha uch marta yuviladi. Barmogʼida uzugi bor kishi uni qimirlatib, ostiga suv yetkazadi. Barmoqlarni bir-birining orasiga kirgiziladi.",
                ),
                ablutionSteps(
                  2,
                  "Og`iz chayish",
                  "O'ng qo'lda suv olinib, og'iz uch marta g'arg'ara qilib chayiladi va misvok qilinadi.",
                ),
                ablutionSteps(
                  3,
                  "Burunni chayish",
                  "Burunga o'ng qo'l bilan uch marta suv tortilib, chap qo'l bilan qoqib tozalanadi.",
                ),
                ablutionSteps(
                  4,
                  "Yuzni yuvish",
                  "Yuz yuviladi – uch marta. Yuzning chegarasi uzunasiga soch chiqqan joydan jagʼning ostigacha, kengligi esa ikki quloq yumshogʼining orasigacha boʼlgan oʼrindir.",
                ),
                ablutionSteps(
                  5,
                  "Qo`llarni tirsakkacha yuvish",
                  "Avval o'ng qo'l tirsaklar bilan qo'shib ishqalab yuviladi.",
                  index2: 6,
                ),
                ablutionSteps(
                  7,
                  "Qo`llarni tirsakkacha yuvish",
                  "So'ngra chap qo'l tirsaklar bilan qo'shib ishqalab yuviladi.",
                  index2: 8,
                ),
                ablutionSteps(
                  10,
                  "Boshga mas'h tortish",
                  "Hovuchga suv olib toʼkib tashlab, qoʼli bilan boshning hamma qismiga bir marta mash tortiladi.",
                ),
                ablutionSteps(
                  12,
                  "Quloqqa mas'h tortish",
                  "Koʼrsatkich barmoq bilan quloq ichiga mash tortib, bosh barmoq bilan esa quloq tashqarisiga mash tortiladi.",
                  index2: 13,
                ),
                ablutionSteps(
                  11,
                  "Bo`yinga mas'h tortish",
                  "Ikkala kaftning orqasi bilan bo`yinga mas'h tortiladi",
                  index2: 13,
                ),
                ablutionSteps(
                  14,
                  "Oyoqlarni yuvish",
                  "Chap qoʼl bilan oʼng oyoqni oshiq (toʼpiq) bilan qoʼshib va barmoqlar orasini (ishqalab) uch marta yuviladi.",
                ),
                ablutionSteps(
                  15,
                  "Oyoqlarni yuvish",
                  "Chap oyoq ham huddi shu tarzda uch marta chap qoʼl bilan oyoqni oshiq (toʼpiq) bilan qoʼshib va barmoqlar orasini (ishqalab) uch marta yuviladi.",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      pageController.previousPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.linear,
                      );
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_left_outlined,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.linear,
                      );
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ablutionSteps(int index, String title, String txt, {int? index2}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              color:
                  Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 23,
            ),
          ),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.height * 0.8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/$index.png'),
                ),
              ),
              index2 == null
                  ? const Text("")
                  : Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.height * 0.1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/$index2.png'),
                    ),
                  ),
            ],
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.height * 0.7,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/tahorat_naqw.png',
                    color: primary,
                  ),
                ),
              ),
              Text(
                txt,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color:
                      Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
