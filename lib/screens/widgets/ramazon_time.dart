import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RamazonTimeCard extends StatelessWidget {
  final String txt;
  final String imgSaxarlik;
  final String imgIftorlik;
  final String saxarlik;
  final String iftorlik;

  const RamazonTimeCard({
    Key? key,
    required this.txt,
    required this.imgSaxarlik,
    required this.imgIftorlik,
    required this.saxarlik,
    required this.iftorlik,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
      ),
      child: Card(
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : const Color.fromARGB(255, 6, 17, 48),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 3,
        // shadowColor: const Color.fromARGB(255, 222, 220, 220).withOpacity(0.3),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title

              // Saxarlik va Iftorlik qismi
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Saxarlik qismi
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/$imgSaxarlik.png',
                        height: 50,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Saxarlik: $saxarlik",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  // Ajratuvchi chiziq
                  Container(
                    height: 50,
                    width: 2,
                    color: Colors.grey.withOpacity(0.5),
                  ),

                  // Iftorlik qismi
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/$imgIftorlik.png',
                        height: 50,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Iftorlik: $iftorlik",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
