import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sajda_app/app/constants/globals.dart';
import 'package:sajda_app/bloc_state_manegment/savedSuraBloc/get_sura_name_with_isar_bloc.dart';

class SavedSura extends StatefulWidget {
  const SavedSura({super.key});
  @override
  State<SavedSura> createState() => _SavedSuraState();
}

class _SavedSuraState extends State<SavedSura> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GetSuraNameWithIsarBloc>(
      context,
    ).add(StartSuraNameWithIsarEvent());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(
          child: Text(
            "Saqlangan suralar",
            style: GoogleFonts.poppins(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color:
                  Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
            ),
          ),
        ),
      ),
      body: BlocConsumer<GetSuraNameWithIsarBloc, GetSuraNameWithIsarState>(
        listener: (context, state) {
          if (state is ReloadingSuraNameWithIsarState) {
            BlocProvider.of<GetSuraNameWithIsarBloc>(
              context,
            ).add(StartSuraNameWithIsarEvent());
          }
        },
        builder: (context, state) {
          return state is StartSuraNameWithIsarState && state.user!.isNotEmpty
              ? ListView.builder(
                itemCount: state.user?.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width * 1,
                          child: Image.asset(
                            'assets/images/naq.png',
                            color: primary,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.grey[400]
                                      : gray,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Stack(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svgs/nomor-surah.svg',
                                      ),
                                      SizedBox(
                                        height: 36,
                                        width: 36,
                                        child: Center(
                                          child: Text(
                                            state.user![index].ayatIndex
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                              color:
                                                  Theme.of(
                                                            context,
                                                          ).brightness ==
                                                          Brightness.light
                                                      ? Colors.black
                                                      : Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    state.user![index].suraIndex! <
                                            suralarTxt.length
                                        ? suralarTxt[state
                                            .user![index]
                                            .suraIndex!]
                                        : "Noma'lum sura",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      color:
                                          Theme.of(context).brightness ==
                                                  Brightness.light
                                              ? Colors.black.withOpacity(0.8)
                                              : Colors.white,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.play_arrow_rounded,
                                      color:
                                          Theme.of(context).brightness ==
                                                  Brightness.light
                                              ? Colors.black
                                              : Colors.white,
                                      size: 30,
                                    ),
                                    const SizedBox(width: 15),
                                    IconButton(
                                      splashRadius: 8,
                                      onPressed: () {
                                        BlocProvider.of<
                                          GetSuraNameWithIsarBloc
                                        >(context).add(
                                          RemoveSuraNameWithIsarEvent(
                                            state.user![index].id!,
                                          ),
                                        );
                                      },
                                      icon: Icon(
                                        Icons.bookmark,
                                        color:
                                            Theme.of(context).brightness ==
                                                    Brightness.light
                                                ? Colors.black
                                                : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            state.user![index].nameAr!,
                            style: GoogleFonts.amiri(
                              color:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.black
                                      : Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            state.user![index].nameUz!,
                            style: GoogleFonts.montserrat(
                              color:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.black
                                      : text,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
              : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Text(
                        'Hozirda ilovada saqlangan \nsuralar mavjud emas',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: Image.asset('assets/images/back.png'),
                  ),
                ],
              );
        },
      ),
    );
  }

  List<String> suralarTxt = [
    "Fotiha surasi",
    "Baqara surasi",
    "Oli Imron surasi",
    "Niso surasi",
    "Moida surasi",
    "An'om surasi",
    "A'rof surasi",
    "Anfol surasi",
    "Tavba surasi",
    "Yunus surasi",
    "Hud surasi",
    "Yusuf surasi",
    "Ra'd surasi",
    "Ibrohim surasi",
    "Hijr surasi",
    "Nahl surasi",
    "Isro` surasi",
    "Kahf surasi",
    "Maryam surasi",
    "Toha surasi",
    "Anbiyo surasi",
    "Haj surasi",
    "Mu'minun surasi",
    "Nur surasi",
    "Furqon surasi",
    "Shu`aro surasi",
    "Naml surasi",
    "Qasas surasi",
    "Ankabut surasi",
    "Rum surasi",
    "Luqmon surasi",
    "Sajda surasi",
    "Ahzob surasi",
    "Saba' surasi",
    "Fotir surasi",
    "Yosin surasi",
    "Soffot surasi",
    "Sod surasi",
    "Zumar surasi",
    "G'ofir surasi",
    "Fussilat surasi",
    "Sho`ro surasi",
    "Zuxruf surasi",
    "Duxon surasi",
    "Josiya surasi",
    "Ahqof surasi",
    "Muhammad surasi",
    "Fath surasi",
    "Hujurot surasi",
    "Qof surasi",
    "Zoriyot surasi",
    "Tur surasi",
    "Najm surasi",
    "Qamar surasi",
    "Ar Rahmon surasi",
    "Voqea surasi",
    "Hadid surasi",
    "Mujodala surasi",
    "Hashr surasi",
    "Mumtahana surasi",
    "Sof surasi",
    "Jum`a surasi",
    "Munafiqun surasi",
    "Tag'obun surasi",
    "Taloq surasi",
    "Tahrim surasi",
    "Mulk surasi",
    "Qalam surasi",
    "Haqqah surasi"
        "Maorij surasi",
    "Nuh surasi",
    "Jin surasi",
    "Muzzammil surasi",
    "Muddassir surasi",
    "Qiyomat surasi",
    "Inson surasi",
    "Mursalot surasi",
    "Naba' surasi",
    "Nozi'ot surasi",
    "Abasa surasi",
    "Takvir surasi",
    "Infitor surasi",
    "Mutoffifin surasi",
    "Inshiqoq surasi",
    "Buruj surasi",
    "Toriq surasi",
    "A'lo surasi",
    "G'oshiya surasi",
    "Fajr surasi",
    "Balad surasi",
    "Shams surasi",
    "Layl surasi",
    "Zuho surasi",
    "Inshiroh surasi",
    "Tiyn surasi",
    "Alaq surasi",
    "Qadr surasi",
    "Bayyina surasi",
    "Zalzala surasi",
    "Odiyot surasi",
    "Qori'a surasi",
    "Takosur surasi",
    "Asr surasi",
    "Humaza surasi",
    "Fil surasi",
    "Quraysh surasi",
    "Moun surasi",
    "Kavsar surasi",
    "Kofirun surasi",
    "Nasr surasi",
    "Masad surasi",
    "Ixlos surasi",
    "Falaq surasi",
    "Nos surasi",
  ];
}
