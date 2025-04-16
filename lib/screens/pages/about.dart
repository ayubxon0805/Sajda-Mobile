import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black.withOpacity(0.8)
                        : Colors.grey,
              ),
            ),
            Text(
              'Ilova haqida',
              style: GoogleFonts.abrilFatface(
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black
                        : Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Text(
              'Oʼzbekiston musulmonlari idorasi raisi, muftiy Shayx Nuriddin Xoliqnazar hazratlari tashabbuslari bilan bosh mukofoti Haj safari yoʼllanmasi boʼlgan “OLАMLАRGА RАHMАT PАYGʼАMBАR” nomli siyrat tanlovi eʼlon qilinadi.',
              style: GoogleFonts.poppins(
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black
                        : Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Zero, Paygʼambarimiz Muhammad sollallohu alayhi vasalamning goʼzal odob-ahloqlari va siyratlarini oʼrganish har bir insonni komillikka yetaklaydi.',
              style: GoogleFonts.poppins(
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black
                        : Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Oʼzbekiston musulmonlari\nidorasi Matbuot xizmati',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.poppins(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Versiya: 1.0.0',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.poppins(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
