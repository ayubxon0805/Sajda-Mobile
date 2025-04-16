import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sajda_app/app/constants/globals.dart';
import 'package:sajda_app/bloc_state_manegment/disableSura/disable_sura_bloc.dart';
import 'package:sajda_app/bloc_state_manegment/theme_bloc/theme_mode_bloc.dart';
import 'package:sajda_app/models/ayat.dart';
import 'package:sajda_app/models/isar_sura/user.dart';
import 'package:sajda_app/models/surah.dart';

class DetailScreen extends StatefulWidget {
  final int noSurat;
  final String suratName;
  final String suratNameLatin;
  final int location;

  const DetailScreen({
    super.key,
    required this.noSurat,
    required this.suratName,
    required this.suratNameLatin,
    required this.location,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Future<List<Ayat>> _getSurahList() async {
    String data = await rootBundle.loadString(
      'assets/datas/${widget.noSurat}.json',
    );
    return surahAyaFromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DisableSuraBloc, DisableSuraState>(
      listener: (context, state) {
        if (state is RemoveDisabledSuraState) {
          BlocProvider.of<DisableSuraBloc>(
            context,
          ).add(StartDisableSuraEvent());
        }
        if (state is AddDisabledSuraState) {
          BlocProvider.of<DisableSuraBloc>(
            context,
          ).add(StartDisableSuraEvent());
        }
      },
      builder: (context, state) {
        return FutureBuilder<List<Ayat>>(
          future: _getSurahList(),
          initialData: null,
          builder: ((context, snapshot) {
            if (!snapshot.hasData) {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              );
            }
            List<Ayat> ayat = snapshot.data!;
            return Scaffold(
              backgroundColor:
                  Theme.of(context).brightness == Brightness.dark
                      ? Colors.black.withOpacity(0.7)
                      : Colors.white,
              appBar: _appBar(context: context),
              body: NestedScrollView(
                headerSliverBuilder:
                    (context, innerBoxIsScrolled) => [
                      SliverToBoxAdapter(
                        child: _details(
                          surahLen: ayat.length,
                          suratName: widget.suratName,
                          suratNameLatin: widget.suratNameLatin,
                          location: widget.location,
                        ),
                      ),
                    ],
                body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      if (state is StartDisabledSuraState) {
                        for (int a = 0; a < ayat.length; a++) {
                          for (int b = 0; b < state.index.length; b++) {
                            if (ayat[a].id == state.index[b].toString()) {
                              ayat[a].isSaved = true;
                            }
                          }
                        }
                      }
                      return _ayatItem(
                        context: context,
                        ayat: ayat.elementAt(index),
                      );
                    },
                    itemCount: ayat.length,
                    //  surah.jumlahAyat + (noSurat == 1 ? -1 : 0),
                    separatorBuilder: (context, index) => Container(),
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }

  Widget _ayatItem({
    required BuildContext context,
    required Ayat ayat,
  }) => Padding(
    padding: const EdgeInsets.only(top: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            color:
                Theme.of(context).brightness == Brightness.light
                    ? Colors.grey[400]
                    : gray,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                width: 27,
                height: 27,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(27 / 2),
                ),
                child: Center(
                  child: Text(
                    ayat.nomor,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Icon(
                Icons.share_outlined,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black
                        : Colors.white,
              ),
              const SizedBox(width: 16),
              Icon(
                Icons.play_arrow_rounded,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black
                        : Colors.white,
                size: 30,
              ),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () async {
                  if (ayat.isSaved != true) {
                    User user =
                        User()
                          ..id = int.parse(ayat.id)
                          ..nameAr = ayat.ar
                          ..nameUz = ayat.idn != "" ? ayat.idn : ayat.tr
                          ..suraIndex = int.parse(ayat.surah)
                          ..ayatIndex = int.parse(ayat.nomor);
                    BlocProvider.of<DisableSuraBloc>(
                      context,
                    ).add(AddDisabledSuraEvent(user));
                  } else {
                    BlocProvider.of<DisableSuraBloc>(
                      context,
                    ).add(RemoveDisabledSuraEvent(int.parse(ayat.id)));
                  }
                },
                icon:
                    ayat.isSaved == true
                        ? Icon(
                          Icons.bookmark,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.black
                                  : Colors.white,
                        )
                        : Icon(
                          Icons.bookmark_outline,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.black
                                  : Colors.white,
                        ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Text(
          ayat.ar,
          style: GoogleFonts.amiri(
            color:
                Theme.of(context).brightness == Brightness.light
                    ? Colors.black.withOpacity(0.8)
                    : Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          textAlign: TextAlign.right,
        ),
        const SizedBox(height: 16),
        Text(
          ayat.idn != "" ? ayat.idn : ayat.tr,
          style: GoogleFonts.montserrat(fontSize: 16),
        ),
      ],
    ),
  );

  Widget _details({
    required int surahLen,
    required String suratName,
    required String suratNameLatin,
    required int location,
  }) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
    child: Stack(
      children: [
        Container(
          height: 257,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0, .6, 1],
              colors: [Color(0xFFDF98FA), Color(0xFFB070FD), Color(0xFF9055FF)],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Opacity(
            opacity: .2,
            child: SvgPicture.asset('assets/svgs/quran.svg', width: 324 - 55),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              Text(
                suratName,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                suratNameLatin,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              Divider(
                color: Colors.white.withOpacity(.35),
                thickness: 2,
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    location == 1 ? "Madina" : "Makka",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 4,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "$surahLen Oyatdan iborat",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              SvgPicture.asset('assets/svgs/bismillah.svg'),
            ],
          ),
        ),
      ],
    ),
  );

  AppBar _appBar({required BuildContext context}) => AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(4.0),
      child: Container(
        color: const Color(0xFF040C23).withOpacity(0.4),
        height: 1.0,
      ),
    ),
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
        const SizedBox(width: 50),
        Text(
          'Qur\'on suralari',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:
                Theme.of(context).brightness == Brightness.light
                    ? Colors.black.withOpacity(0.8)
                    : Colors.white,
          ),
        ),
        const Spacer(),
        BlocConsumer<ThemeModeBloc, ThemeModeState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state is SetDarkThemeModeState
                ? IconButton(
                  onPressed: () {
                    BlocProvider.of<ThemeModeBloc>(
                      context,
                    ).add(SetLightThemeEvent());
                  },
                  icon: Image.asset(
                    'assets/images/moon.png',
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colors.black.withOpacity(0.8)
                            : text,
                    height: 25,
                  ),
                )
                : IconButton(
                  onPressed: () {
                    BlocProvider.of<ThemeModeBloc>(
                      context,
                    ).add(SetDarkThemeEvent());
                  },
                  icon: Image.asset(
                    "assets/images/sun.png",
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colors.black.withOpacity(0.8)
                            : text,
                    height: 25,
                  ),
                );
          },
        ),
      ],
    ),
  );
}
