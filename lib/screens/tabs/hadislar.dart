import 'package:sajda_app/app/constants/globals.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HadislarScreen extends StatelessWidget {
  const HadislarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                // height: 70,
                child: Image.asset('assets/images/room.png', scale: 3.4),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  'Hadislar va\nrivoyatlar',
                  style: GoogleFonts.abrilFatface(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          rasm('1', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Umar ibn Xattobdan  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam aytdilar: «Albatta, amallar niyat bilandir. Har bir kishi niyat qiluvchidir. Kimning hijrati Alloh va rasuli uchun bo‘lsa, bas, Alloh va rasuli uchun hijrat qilibdi. Kimning hijrati dunyoga yetishish yoki xotinga uylanish uchun bo‘lsa, uning hijrati o‘sha narsaga bo‘libdi».",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('2', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Oishadan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Kimki bizning ishimizda yangilik qilsa, bu undan bo‘lmasa, bas, u rad qilingandir», dedilar. Imom Buxoriy va Muslim  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('3', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Nu’mon ibn Bashirdan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Albatta halol ochi"
              "  q-ravshan. Albatta harom ochiq-ravshan. Uning o‘rtasida shubhali narsalar bo‘lib, uni ko‘p insonlar bilishmaydi. Kimki shubhadan taqvo qilsa, dini va obro‘sini soflabdi. Kimki shubhaga voqe’ bo‘lsa, haromga yo‘liqibdi. Rioya qiluvchi qo‘riqxona atrofiga borib, uning ichiga k"
              "irib qolishi mumkin. Har bir podshohning qo‘riqxonasi bor. Ogoh bo‘ling, Allohning qo‘riqxonasi U harom qilgan narsalardir. Ogoh bo‘ling, jasadda bir parcha go‘sht bor. Agar u isloh bo‘lsa, jasadning barchasi isloh bo‘ladi. Agar u fasod"
              "bo‘lsa, jasadning barchasi fasod bo‘ladi. U ham bo‘lsa qalbdir», dedilar. Imom Buxoriy va Muslim  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('4', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Ibn Mas’uddan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Sizlardan biringiz onasi qornida ekanida qirq kun maniy holatida xalq qilinishi jamlanadi. So‘ngra quyuq qon bo‘lib, o‘sha kabi xalq qilinishi jamlanadi. So‘ngra parcha go‘sht bo‘lib, o‘sha kabi xalq qilinishi jamlanadi. So‘ngra farishta yuborilib, unga ruh puflaydi. Va to‘rt kalima, ya’ni rizqi, ajali, amali, baxtli yoki baxtsizligini yozish buyuriladi. Undan boshqa iloh yo‘q bo‘lgan Zot ila qasamki, sizlardan biringiz jannat ahlining amalini qiladi. Hattoki, u bilan jannat orasida bir gaz (o‘lchov) qoladi. Bas, uning o‘sha yozilgan kitobi ilgarilaydi-da, u do‘zax ahlining amalini qilib, do‘zaxga kirib ketadi. Sizlardan biringiz do‘zax ahlining amalini qiladi-da, hattoki u bilan do‘zax orasida bir gaz qoladi. Bas, uning kitobi ilgarilaydi-da, u jannat ahli amalini qilib, jannatga kirib ketadi», dedilar. Imom Buxoriy va Muslim  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('5', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Hasan ibn Alidan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Shubhali narsani shubhasiziga qo‘y», dedilar. (Ya’ni, shubhali narsani tark qilib, shubhasiz narsani ol.) Termiziy va Nasaiy  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('6', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Abu Hurayradan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Befoyda so‘zlarni tark qilish kishining Islomi chiroyligidan (dalolat)dir», dedilar. Imom Termiziy va Ibn Mojalar  rivoyati.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('7', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Anasdan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Sizlardan biringiz o‘zi yaxshi ko‘rgan narsasini birodari uchun ham yaxshi ko‘rmaguncha haqiqiy mo‘min bo‘la olmaydi», dedilar. Imom Buxoriy va Muslim  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('8', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Abu Hurayradan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Albatta Alloh taolo marhamatlidir. Faqat marhamatli bo‘lganni qabul qiladi. Alloh taolo yuborgan payg‘ambarlariga buyurgan narsalarini mo‘minlarga ham buyuradi. Bu haqda Alloh taolo quyidagi oyatlarni nozil qilgan: «(Yuborgan barcha payg‘ambarlarimizga shunday dedik): «Ey payg‘ambarlar, halol-pok taomlardan yenglar va yaxshi amallar qilinglar! Albatta Men qilayotgan amallaringizni bilguvchidirman» (Mo‘‘minun surasi, 51-oyat),«Ey mo‘minlar, sizlarga rizq qilib berganimiz - pokiza narsalardan yenglar»(Baqara surasi, 172-oyat). Bir kishi safarda uzoq yuradi. Sochlari to‘zib, kiyimlari changib ketadi. Va qo‘lini osmonga cho‘zib, «Ey Rabbim, ey Rabbim», deydi. Uning yeyayotgan taomi harom, ichayotgan ichimligi harom, kiyayotgan kiyimi harom hamda ozuqasi harom. Qaerdan uning (duolari) ijobat qilinsin?!» dedilar. Imom Muslim  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('9', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Zarar berish ham yo‘q. Zarar olish ham yo‘q. «Muvatto’» kitobida  rivoyat qilingan.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('10', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Tamiym ad-Doriydan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Din xayrixohlikdir», deganlarida, sahobalar: «Kim uchun, ey Rasululloh?» deyishdi. Shunda Rasululloh sollallohu alayhi vasallam: «Allohga, kitobiga, rasuliga va musulmonlar imomi hamda ommasiga», deb aytdilar. Imom Muslim  rivoyatlari. \n \n(Allohga bo‘lgan xayrixohlik - Unga imon keltirib, aytganlarini qilib, qaytariqlaridan qaytish. Kitobiga bo‘lgan xayrixohlik - undagi narsalarga bo‘ysunib, tilovat qilish. Rasuliga bo‘lgan xayrixohlik- u olib kelgan risolatni tasdiqlash. Musulmonlar imomiga bo‘lgan xayrixohlik- ularga haq yo‘lda bo‘lsalar, ularga yordam berib, itoat qilish. Ommaga bo‘lgan xayrixohlik-amru-ma’ruf, nahiy-munkar qilib hamda aziyat bermaslik bilan bo‘ladi... - tarj.)",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('11', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Abu Hurayradan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Sizlardan qaytargan narsamdan chetlaninglar. Buyurgan narsamni qodir bo‘lganingizcha bajaringlar. Chunki sizlardan avvalgilar ko‘p so‘rash va payg‘ambarlariga ixtilof qilish sababli halok bo‘lishdi», dedilar. Imom Buxoriy va Muslim  rivoyatlari. ",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('12', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Sahl ibn Sa’ddan (r.a.)  rivoyat qilinadi. Bir kishi Rasululloh sollallohu alayhi vasallamning huzurlariga kelib, «Ey Allohning rasuli, meni bir amalga yo‘llab ko‘yingki, u amal bilan meni Alloh yaxshi ko‘rsin va insonlar ham yaxshi ko‘rsin», deganida, Rasululloh sollallohu alayhi vasallam: «Dunyoda zohid bo‘l, Alloh seni yaxshi ko‘radi. Insonlar huzuridagi narsadan behojat bo‘l, insonlar seni yaxshi ko‘radi», dedilar. Ibn Moja  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('13', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Ibn Mas’uddan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Allohdan boshqa iloh yo‘q va mening Allohning rasuli ekanimga guvohlik bergan musulmon kishining qoni halol emas, faqat uch narsaning birida haloldir (ya’ni, o‘ldirish joiz): ular oilali zinokor bo‘lsa. Nafs nafs bilan, ya’ni qasos. Jamoatdan ajrab, dinini tark qiluvchi», dedilar. Imom Buxoriy va Muslim  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('14', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Ibn Umardan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Kishilar «La ilaha illallohu va anna Muhammadan Rasululloh», deyishmagunicha, namozni qoim qilishmagunicha, zakotni berishmagunicha ular bilan urushmokqa buyurildim. Agar mana shularni qilishsa, qonlari-yu mollari mendan omonda bo‘ladi. Faqat Islom haqida unday emas (ya’ni, hadlarda). Va ularning hisobi Alloh taologadir», dedilar. Imom Buxoriy va Muslim  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('15', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Ibn Umardan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Islom beshta narsa ustiga qurilgandir. Ular «La ilaha illallohu va anna Muhammadan Rasululloh» kalimasini aytish, namozni qoim qilish, zakotni berish, haj va ramazon ro‘zasidir», dedilar. Imom Buxoriy va Muslim  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          const Divider(color: Colors.deepPurple),
          rasm('16', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Ibn Abbosdan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Agar kishilarning da’volariga qarab berilaverganida edi, ular qavmning moli va qonlarini da’vo qilishgan bo‘lar edi. Lekin da’vo qiluvchiga hujjat keltirish va inkor qiluvchiga qasam ayttirish lozim bo‘ladi», dedilar. Mana shu lafz bilan hasandir. Va ikki «Sahih» kitobida keltirilgan.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('17', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Vobisa ibn Ma’baddan (r.a.)  rivoyat qilinadi. Bu zot Rasululloh sollallohu alayhi vasallam huzurlariga kelganlarida, Rasululloh sollallohu alayhi vasallam: «Yaxshilik va gunoh haqida so‘rash uchun keldingmi?» dedilar. Shunda bu zot: «Ha», deganlarida, Rasululloh sollallohu alayhi vasallam: «Qalbingdan fatvo so‘ra. Yaxshilik -nafs va qalb unga xotirjam bo‘lganidir. Gunoh - nafs xira bo‘lib, qalb beqaror bo‘lganidir. Agar kishilar senga fatvo berishsa ham va berdirishsa ham», dedilar. Imom Ahmad va Doramiylar  rivoyati.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('18', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              " Navvos ibn Sam’ondan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Yaxshilik husni xulqdir. Yomonlik - nafsing kirlanib, kishilar undan xabardor bo‘lishlarini karih ko‘rganingdir», dedilar. Imom Muslim  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('19', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Shaddod ibn Avsdan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam «Albatta Alloh taolo har bir narsada yaxshilik bo‘lishini yozdi. Agar qatl qilsalaringiz, qatlni chiroyli qilinglar. Agar qurbonlik qilsalaringiz, qurbonlikni chiroyli qilinglar. Sizlarning biringiz (qurbonlik qiladigan bo‘lsa) tig‘ini o‘tkirlab, uni tinchitsin» dedilar. Imom Muslim  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('20', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Abu Hurayradan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam «Kimki Allohga va oxirat kuniga imon keltirsa, yaxshi narsalarni gapirsin yoki jim tursin. Kimki Allohga va oxirat kuniga imon keltirsa, ko‘shnisini hurmat qilsin. Kimki Allohga va oxirat kuniga imon keltirsa, mehmonini hurmat qilsin», dedilar. Imom Buxoriy va Muslim  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('21', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Abu Hurayradan (r.a.)  rivoyat qilinadi. Bir kishi Rasululloh sollallohu alayhi vasallam huzurlariga kelib, «Menga vasiyat qiling», dedi. Shunda u zot: «g‘azab qilma», deb bir necha bor qaytardilar. Va yana «g‘azab qilma», dedilar. Imom Buxoriy  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('22', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Abu Sa’laba al-Xushaniydan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Albatta Alloh taolo farzlarni farz etdi, ularni zoe qilmanglar. Va hadlarni chegara qildi, undan o‘tib ketmanglar. Va narsalarni harom qildi, uni buzmanglar. Va unutmasdan sizlarga rahmat qilgan holda ko‘p narsalarda sukut qildi, sizlar u haqda bahs qilmanglar», dedilar. Doratsutniy hasan isnod bilan rivoyat qilganlar.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('23', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Muozdan (r.a.)  rivoyat qilinadi: «Ey Rasululloh, menga bir amalning xabarini beringki, u meni jannatga kiritib, do‘zaxdan uzoq qilsin», desam, u zot: «Sen juda katta narsa so‘rading. Albatta u Alloh oson qilgan kishiga  yengildir. Allohga biror narsani shirk keltirmasdan ibodat qilasan. Namozni qoim qilasan. Zakotni berasan. Ramazon ro‘zasini tutasan. Baytullohni haj qilasan. Seni eshiklarning yaxshisiga dalolat qilaymi? Ro‘za pardadir. Sadaqa xatolarni xuddi suv o‘tni o‘chirgandek o‘chiradi», dedilar. Kishining kechaning o‘rtasidagi namozi haqida quyidagi oyatni o‘qidilar: «Ularning yonboshlari o‘rin-joylaridan yiroq bo‘lur. (Ya’ni, tunlarini ibodat bilan o‘tkazishib, oz uxlaydilar.) Ular Parvardigorlariga ko‘rquv va umidvorlik bilan duo-iltijo qilurlar va Biz ularga rizq qilib bergan narsalardan infoq-ehson qilurlar. Bas, ularning qilib o‘tgan amallariga mukofot qilib, ular uchun berkitib qo‘yilgan ko‘zlar quvonchini (ya’ni, oxirat ne’matlarini) biror jon bilmas» (Sajda surasi, 16-17-oyat). So‘ngra yana u zot: «Ishning boshi va ustuni hamda yuksak cho‘kqisining xabarini beraymi?» deganlarida, «Ha, ey Rasululloh», dedim. Shunda u zot: «Ishning boshi - Islom. Ustuni - namoz. Yuksak cho‘qqisi - jihoddir. Bularning hammasidan ham asosiysining xabarini beraymi?» dedilar. Men: «Ha, ey Rasululloh», dedim. U zot tillarini ushlab, «Sen mana buni tiygin», dedilar. Shunda men: «Ey Rasululloh, gapirgan narsalarimizga ham jazolanamizmi?» desam, u zot: «Onang farzandidan ajragur, kishilarning yuzlari bilan do‘zaxga ag‘darilishlari faqat tillari gapirgan narsalar sababidandir», dedilar. Imom Termiziy  rivoyatlari",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('24', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Abu Zarr va Muozdan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Qayda bo‘lmasin, Allohdan taqvo qil. Yomonlikka yaxshilikni ergashtir, uni o‘chirib yuboradi. Kishilarga chiroyli xulq bilan muomalada bo‘l», dedilar. Imom Termiziy  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('25', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Irboz ibn Soriyadan (r.a.)  rivoyat qilinadi: «Rasululloh sollallohu alayhi vasallam bizga va’z aytdilar, undan qalblar vahimaga tushdi va ko‘zlardan yosh oqdi. Shunda biz: «Ey Rasululloh, vidolashuvchi mav’iza bo‘lsa kerak, bizga vasiyat qiling», desak, u zot: «Sizlarga Allohdan taqvo qilishni hamda agar qul boshliq bo‘lsa, uning so‘zini eshitib itoat etishni vasiyat qilaman. Chunki sizlardan qaysi biringiz yashaydigan bo‘lsa, ko‘p ixtiloflarni ko‘radi. Ana shu paytda mening sunnatimni va to‘g‘ri yo‘lda yuruvchi xulafoi roshidinlar sunnatini o‘zingizga lozim topib, uni oziq tishlaringiz bilan mahkam tishlanglar. Ishlarning yangisidan chetlaninglar. Chunki har bir bid’at zalolatdir», dedilar. Abu Dovud  va Termiziylar  rivoyati.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('26', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Abu Mas’ud al-Badriydan (r.a.)  rivoyat qilinadi. Rasululloh sollallohu alayhi vasallam: «Avvalgi payg‘ambarlar kalomidan topilgan narsa - «Agar uyalmasang, xohlagan narsangni qil», deb aytilganidir», dedilar. Imom Buxoriy rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('27', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Jobirdan (r.a.)  rivoyat qilinadi. Bir kishi Rasululloh sollallohu alayhi vasallamdan «Agar farz namozlarini o‘qisam, ramazon ro‘zasini tutsam, halolni halol va haromni harom, desam, bularga biror narsani qo‘shmasam, jannatga kiramanmi?» deganda, Rasululloh sollallohu alayhi vasallam: «Ha», deb javob qildilar. Imom Muslim  rivoyatlari.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('28', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Sufyon ibn Abdullohdan (r.a.)  rivoyat qilinadi. Bu zot: «Ey Rasululloh, menga Islomdan bir so‘z aytingki, men sizdan boshqa biror kishidan u haqda so‘ramayin», deganda, u zot: «Allohga imon keltirdim, deb aytib, so‘ngra istiqomatda (ya’ni, sobitqadamlikda) bo‘l», dedilar. Imom Muslim  rivoyatlari. \n \n Ulamolarning aytishlaricha, bu Rasululloh sollallohu alayhi vasallamning so‘zlarni jamlovchi hadislari bo‘lib, Alloh taoloning quyidagi so‘ziga muvofiqdir: «Albatta: «Parvardigorimiz Allohdir», deb, so‘ngra (yolg‘iz Allohga toat-ibodat qilishda) to‘g‘ri -ustivor bo‘lgan zotlarning oldilariga (o‘lim paytida) farishtalar tushib, (derlar): «Qo‘rqmanglar va g‘amgin bo‘lmanglar» (Fussilat surasi, 30-oyat). Jumhur ulamolar fikricha, bu oyat va hadisning ma’nosi - «Imon keltirib, Allohning toatida bardavom bo‘lganlar»dir.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('29', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Umar ibn Xattobdan (r.a.)  rivoyat qilingan, Jabroil alayhissalomning Rasululloh sollallohu alayhi vasallamdan imon, Islom, ehson, Qiyomat haqida so‘ragan savollari haqidagi Imom Muslim «Sahih»larida kelgan mashhur hadisdir.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('30', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Ibn Abbosdan  rivoyat qilinadi: «Bir kuni Rasululloh sollallohu alayhi vasallamning orqalarida edim. U zot: «Ey bolakay, senga bir kalima o‘rgataymi? Allohga rioya qil, seni saqlaydi. Allohga rioya qil, yo‘nalishingni topasan. Agar so‘rasang, Allohdan so‘ragin. Agar yordam tilasang ham, Allohdan tilagin. Bilginki, agar ummat biror narsada senga yordam berishga jamlansa, faqatgina Alloh senga (taqdir) qilib yozib qo‘ygan narsanigina yordam bera oladi, xolos. Agar ummat biror narsada senga zarar berishga jamlansa, faqatgina Alloh senga (taqdir) qilib yozib qo‘ygan narsanigina zarar bera oladi, xolos. Qalam ko‘tarilib, sahifalar qurib bo‘lgan», deb aytdilar. Imom Termiziy rivoyatlari. \n \n Termiziyning boshqa  rivoyatlarida: «Allohga rioya qil, yo‘nalishingni topasan. Allohni kengchilikda tanigin, seni qiyinchilikda taniydi. Bilginki, albatta xato qilmaganing to‘g‘ri qilganing uchun emas. Va to‘g‘ri qilmaganing xato qilganing uchun emas. Bilginki, albatta nusrat sabr bilan birga bo‘ladi. Shodlik aziyatlar bilan birga bo‘ladi. Va qiyinchilik bilan yengillik bo‘ladi», deyilgan.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
          rasm('31', context),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Shayximiz Hofiz Abulbaqo Xolid ibn Yusuf Nobilisiy Dimashqiydan, u Abu Tolib Abdulloh, Abu Mansur Yunus, Abulqosim Husayn ibn Hibatulloh al-Misriy, Abu Ya’lo Hamza va Abu Tohir Ismoildan, ular Hofiz Abulqosim Ali ibn Husayn, ya’ni Ibn Asokirdan, u Dimashq xatibi Abul Qosim Ali ibn Ibrohim ibn Abbos al-Husayniydan, u Abu Abdulloh Muhammad ibn Ali Yahyo ibn Salvondan, u Abulqosim Fazl ibn Ja’fardan, u Abu Bakr Abdurahmon ibn Qosim ibn Faraj al-Hoshimiydan, u Abu Mishardan, u Said ibn Abdulazizdan, u Rabiy’a ibn Yaziddan, u Abu Idris Xuvloniydan, u Abu Zarrdan (r.a.), Abu Zarr Rasululloh sollallohu alayhi vasallamdan, u zot Jabroil alayhissalomdan, Jabroil (a.s.) esa Alloh taolodan quyidagilarning xabar berdilar: «Alloh taolo: «Ey bandalarim, Uzimga zulmni harom qildim va sizlarning oralaringizda ham uni harom qildim, bas, zulm qilmanglar! Ey bandalarim, sizlar kechayu kunduz xato qilasizlar. Men esa ahamiyat bermasdan gunohlaringizni kechiraman. Bas, Menga istig‘for aytinglar, gunohlaringizni kechaman. Ey bandalarim, barchangiz ochsiz, faqatgina Men taomlantirganlargina unday emas. Bas, Mendan taom talab qilinglar, sizlarni taomlantiraman. Ey bandalarim, barchangiz yalong‘ochsiz, faqatgina Men kiyintirganlargina bunday emas. Kiyinishni Mendan talab qilinglar, Men sizlarni kiyintiraman. Ey bandalarim, agar avvallaringizu oxirlaringiz, insu jinlar fojir qalbli kishi bo‘lishsa, mulkimdan biror narsa kamayib qolmaydi. Ey bandalarim, agar avvallaringizu oxirlaringiz, insu jinlar taqvoli qalb kishilari bo‘lishsa, mulkimda biror narsa ziyoda bo‘lib qolmaydi. Bandalarim, agar avvallaringizu oxirlaringiz, insu jinlar bir tepalikda turib Mendan so‘rashsa, Men har bir kishi so‘ragan narsasini bersam, mulkimdan biror narsa kamaymaydi. Faqatgina dengizga ninani bir marta tiqib olgandagi kamayganchalik ozayadi, xolos. Ey bandalarim, u sizlarning amalingizdir. Men uni sizlarga saqlab beraman. Kimki yaxshisini topsa, Alloh azza va jallaga hamd aytsin. Kimki bundan boshqasini topsa, faqatgina o‘zini malomat qilsin», dedi». ",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : text,
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar(BuildContext context) => AppBar(
    // backgroundColor: background,
    automaticallyImplyLeading: false,
    elevation: 0,
    title: Row(
      children: [
        IconButton(
          onPressed: (() => {}),
          icon: SvgPicture.asset('assets/svgs/menu-icon.svg'),
        ),
        const SizedBox(width: 24),
        Text(
          'Muhammad (s.a.v.)',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:
                Theme.of(context).brightness == Brightness.light
                    ? Colors.black
                    : Colors.white,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: (() => {}),
          icon: SvgPicture.asset('assets/svgs/search-icon.svg'),
        ),
      ],
    ),
  );
  Widget rasm(String num, BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              'assets/images/circle.png',
              color: primary,
              width: 40,
              height: 40,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            child: Center(
              child: Text(
                num,
                style: TextStyle(
                  color:
                      Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
