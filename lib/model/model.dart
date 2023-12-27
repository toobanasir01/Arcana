class Results {

  String? appNumb;
  String? pernr;
  String? zorgtx;
  String? bukrs;
  String? zplstx;
  String? orgeh;
  String? plans;
  String? ename;
  String? natio;
  String? famst;
  String? stras;
  String? ort01;
  String? telnr;

  Results(
      {
        this.appNumb,
        this.pernr,
        this.zorgtx,
        this.bukrs,
        this.zplstx,
        this.orgeh,
        this.plans,
        this.ename,
        this.natio,
        this.famst,
        this.stras,
        this.ort01,
        this.telnr});

  Results.fromJson(Map<String, dynamic> json) {

    appNumb = json['AppNumb'];
    pernr = json['Pernr'];
    zorgtx = json['Zorgtx'];
    bukrs = json['Bukrs'];
    zplstx = json['Zplstx'];
    orgeh = json['Orgeh'];
    plans = json['Plans'];
    ename = json['Ename'];
    natio = json['Natio'];
    famst = json['Famst'];
    stras = json['Stras'];
    ort01 = json['Ort01'];
    telnr = json['Telnr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['AppNumb'] = this.appNumb;
    data['Pernr'] = this.pernr;
    data['Zorgtx'] = this.zorgtx;
    data['Bukrs'] = this.bukrs;
    data['Zplstx'] = this.zplstx;
    data['Orgeh'] = this.orgeh;
    data['Plans'] = this.plans;
    data['Ename'] = this.ename;
    data['Natio'] = this.natio;
    data['Famst'] = this.famst;
    data['Stras'] = this.stras;
    data['Ort01'] = this.ort01;
    data['Telnr'] = this.telnr;
    return data;
  }
}