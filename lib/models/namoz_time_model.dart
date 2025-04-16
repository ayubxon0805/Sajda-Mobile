class NamozTime {
  String? region;
  String? date;
  String? weekday;
  Times? times;

  NamozTime({this.region, this.date, this.weekday, this.times});

  NamozTime.fromJson(Map<String, dynamic> json) {
    region = json['region'];
    date = json['date'];
    weekday = json['weekday'];
    times = json['times'] != null ? Times.fromJson(json['times']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['region'] = region;
    data['date'] = date;
    data['weekday'] = weekday;
    if (times != null) {
      data['times'] = times!.toJson();
    }
    return data;
  }
}

class Times {
  String? tongSaharlik;
  String? quyosh;
  String? peshin;
  String? asr;
  String? shomIftor;
  String? hufton;

  Times(
      {this.tongSaharlik,
      this.quyosh,
      this.peshin,
      this.asr,
      this.shomIftor,
      this.hufton});

  Times.fromJson(Map<String, dynamic> json) {
    tongSaharlik = json['tong_saharlik'];
    quyosh = json['quyosh'];
    peshin = json['peshin'];
    asr = json['asr'];
    shomIftor = json['shom_iftor'];
    hufton = json['hufton'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['tong_saharlik'] = tongSaharlik;
    data['quyosh'] = quyosh;
    data['peshin'] = peshin;
    data['asr'] = asr;
    data['shom_iftor'] = shomIftor;
    data['hufton'] = hufton;
    return data;
  }
}
