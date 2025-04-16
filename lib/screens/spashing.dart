import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../app/constants/globals.dart';
import 'global_home.dart';

class Splashing extends StatefulWidget {
  const Splashing({super.key});

  @override
  State<Splashing> createState() => _SplashingState();
}

class _SplashingState extends State<Splashing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Hazrati Muhammad (s.a.v.) hadislari',
                    style: GoogleFonts.poppins(
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Olamga rahmat payg`ambar',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black.withOpacity(0.8)
                          : text,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 450,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                offset: Offset(5, 5),
                                spreadRadius: -4,
                                blurRadius: 6)
                          ],
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xFF672CBC),
                        ),
                        child: SvgPicture.asset('assets/svgs/splash.svg'),
                      ),
                      Positioned(
                        left: 0,
                        bottom: -23,
                        right: 0,
                        child: Center(
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () async {
                              SharedPreferences pr =
                                  await SharedPreferences.getInstance();
                              pr.setBool('splaw', true);
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Home(),
                              ));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 16),
                              decoration: BoxDecoration(
                                  color: orange,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Text(
                                'Ilovaga kirish',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.black.withOpacity(0.8)
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
