import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sajda_app/app/constants/globals.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({super.key});

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
                        : text,
              ),
            ),
            Text(
              'Murojat uchun',
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
              'Ushbu ilova hozirda test rejimida faoliyat olib bormoqda. Xato va kamchiliklar uchun oldindan uzur so`raymiz. Ilovada kamchilik yoki ilova yuzasidan savol va takliflar bo`lsa quyidagi email yoki telegram manzilga izoh qoldirishingiz mumkin.',
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
                  'Email: kamronqodirov441@gmail.com',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.poppins(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Text(
                  'T.me:@Ayubxon2008',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.poppins(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 8),
                Text(
                  'Versiya: 1.0.0',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.poppins(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                    fontSize: 17,
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
