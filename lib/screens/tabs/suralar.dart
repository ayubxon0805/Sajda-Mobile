import 'package:sajda_app/app/constants/globals.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sajda_app/bloc_state_manegment/disableSura/disable_sura_bloc.dart';
import 'package:sajda_app/models/surah.dart';
import 'package:sajda_app/screens/detail_screen.dart';

class SurahTab extends StatelessWidget {
  const SurahTab({super.key});

  Future<List<Surah>> _getSurahList() async {
    String data = await rootBundle.loadString('assets/datas/list-surah.json');
    return surahFromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Surah>>(
      future: _getSurahList(),
      initialData: [],
      builder: ((context, snapshot) {
        if (!snapshot.hasData) {
          return Container();
        }
        return ListView.separated(
          itemBuilder:
              (context, index) => _surahItem(
                context: context,
                surah: snapshot.data!.elementAt(index),
              ),
          separatorBuilder:
              (context, index) => Divider(
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black
                        : const Color(0xFF7B80AD).withOpacity(.35),
              ),
          itemCount: snapshot.data!.length,
        );
      }),
    );
  }

  Widget _surahItem({required Surah surah, required BuildContext context}) =>
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          BlocProvider.of<DisableSuraBloc>(
            context,
          ).add(StartDisableSuraEvent());
          Navigator.of(context).push(
            MaterialPageRoute(
              builder:
                  (context) => DetailScreen(
                    noSurat: surah.nomor!,
                    suratName: surah.nama!,
                    suratNameLatin: surah.namaLatin!,
                    location: surah.tempatTurun!.index,
                  ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Stack(
                children: [
                  SvgPicture.asset('assets/svgs/nomor-surah.svg'),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: Center(
                      child: Text(
                        "${surah.nomor}",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      surah.namaLatin!,
                      style: GoogleFonts.poppins(
                        // color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const SizedBox(width: 5),
                        Container(
                          width: 4,
                          height: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: text,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "${surah.jumlahAyat} Oyat",
                          style: GoogleFonts.poppins(
                            color: text,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                surah.nama!,
                style: GoogleFonts.amiri(
                  color: primary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
}
