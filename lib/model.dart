class OghatSharE {
  bool? ok;
  Result? result;

  OghatSharE({this.ok, this.result});

  OghatSharE.fromJson(Map<String, dynamic> json) {
    ok = json['ok'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ok'] = this.ok;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  String? azanSobh;
  String? toluAftab;
  String? azanZohr;
  String? ghorubAftab;
  String? azanMaghreb;
  String? nimeshab;
  int? month;
  int? day;

  Result(
      {this.azanSobh,
      this.toluAftab,
      this.azanZohr,
      this.ghorubAftab,
      this.azanMaghreb,
      this.nimeshab,
      this.month,
      this.day});

  Result.fromJson(Map<String, dynamic> json) {
    azanSobh = json['azan_sobh'];
    toluAftab = json['tolu_aftab'];
    azanZohr = json['azan_zohr'];
    ghorubAftab = json['ghorub_aftab'];
    azanMaghreb = json['azan_maghreb'];
    nimeshab = json['nimeshab'];
    month = json['month'];
    day = json['day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['azan_sobh'] = this.azanSobh;
    data['tolu_aftab'] = this.toluAftab;
    data['azan_zohr'] = this.azanZohr;
    data['ghorub_aftab'] = this.ghorubAftab;
    data['azan_maghreb'] = this.azanMaghreb;
    data['nimeshab'] = this.nimeshab;
    data['month'] = this.month;
    data['day'] = this.day;
    return data;
  }
}
