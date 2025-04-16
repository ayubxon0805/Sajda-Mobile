class Ayat {
  Ayat({
    required this.id,
    required this.surah,
    required this.nomor,
    required this.ar,
    required this.tr,
    required this.idn,
    this.isSaved
  });

  String id;
  String surah;
  String nomor;
  String ar;
  String tr;
  String idn;
  bool? isSaved;


  factory Ayat.fromJson(Map<String, dynamic> json) => Ayat(
        id: json["id"],
        surah: json["sura"],
        nomor: json["aya"],
        ar: json["arabic_text"],
        tr: json["translation"],
        idn: json["footnotes"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "surah": surah,
        "nomor": nomor,
        "ar": ar,
        "tr": tr,
        "idn": idn,
        'isSaves':isSaved,
      };
}
