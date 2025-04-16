import 'dart:convert';

import 'package:sajda_app/models/ayat.dart';

List<Surah> surahFromJson(String str) =>
    List<Surah>.from(json.decode(str).map((x) => Surah.fromJson(x)));

List<Ayat> surahAyaFromJson(String str) => List<Ayat>.from(
  json.decode(str).map((x) {
    return Ayat.fromJson(x);
  }),
);

String surahToJson(List<Surah> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Surah {
  Surah({
    this.nomor,
    this.nama,
    this.namaLatin,
    this.jumlahAyat,
    this.tempatTurun,
    this.arti,
    this.deskripsi,
    this.audio,
    this.ayat,
  });

  int? nomor;
  String? nama;
  String? namaLatin;
  int? jumlahAyat;
  TempatTurun? tempatTurun;
  String? arti;
  String? deskripsi;
  String? audio;
  List<Ayat>? ayat;

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
    nomor: json["nomor"],
    nama: json["nama"],
    namaLatin: json["nama_latin"],
    jumlahAyat: json["jumlah_ayat"],
    tempatTurun: tempatTurunValues.map[json["tempat_turun"]]!,
    arti: json["arti"],
    deskripsi: json["deskripsi"],
    audio: json["audio"],
    ayat:
        json.containsKey('ayat')
            ? List<Ayat>.from(json["ayat"]!.map((x) => Ayat.fromJson(x)))
            : null,
  );

  factory Surah.fromAyaJson(Map<String, dynamic> json) {
    return Surah(
      ayat:
          json['result'] != null
              ? List<Ayat>.from(json["result"]!.map((x) => Ayat.fromJson(x)))
              : null,
    );
  }

  Map<String, dynamic> toJson() => {
    "nomor": nomor,
    "nama": nama,
    "nama_latin": namaLatin,
    "jumlah_ayat": jumlahAyat,
    "tempat_turun": tempatTurunValues.reverse[tempatTurun],
    "arti": arti,
    "deskripsi": deskripsi,
    "audio": audio,
    "ayat":
        ayat != null ? List<dynamic>.from(ayat!.map((e) => e.toJson())) : [],
  };
}

enum TempatTurun { MEKAH, MADINAH }

final tempatTurunValues = EnumValues({
  "madina": TempatTurun.MADINAH,
  "makka": TempatTurun.MEKAH,
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
