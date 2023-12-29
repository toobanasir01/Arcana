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


class API1 {

  String? reDepositAmt;
  String? textZpdc1Kunnr;
  String? knName1;

  String? salesTrgtMtn;
  String? colTrgtPkr;
  String? SoName1;
  String? fkimg;

  API1(
      {
        required this.reDepositAmt,
        required this.textZpdc1Kunnr,
        required this.knName1,
        required this.SoName1,
        required this.fkimg,
        required this.salesTrgtMtn,
        required this.colTrgtPkr});

  API1.fromJson(Map<String, dynamic> json) {
    reDepositAmt = json['ReDepositAmt'] ?? "0";
    textZpdc1Kunnr = json['TextZpdc1Kunnr'] ?? "0";
    SoName1 = json['SoName1'] ?? "0";
    fkimg = json['Fkimg'] ?? "0";
    knName1 = json['KnName1'] ?? "0";
    salesTrgtMtn = json['SalesTrgtMtn'] ?? "0";
    colTrgtPkr = json['ColTrgtPkr'] ?? "0";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ReDepositAmt'] = this.reDepositAmt;
    data['TextZpdc1Kunnr'] = this.textZpdc1Kunnr;
    data['SoName1'] = this.SoName1;
    data['Fkimg'] = this.fkimg;
    data['KnName1'] = this.knName1;
    data['SalesTrgtMtn'] = this.salesTrgtMtn;
    data['ColTrgtPkr'] = this.colTrgtPkr;
    return data;
  }
}

// class API2 {
//
//   String? name2;
//   String? fkimg;
//
//
//   API2(
//       {
//         this.name2,
//         this.fkimg,
//        });
//
//   API2.fromJson(Map<String, dynamic> json) {
//
//     name2 = json['Name2'];
//     fkimg = json['Fkimg'];
//
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Name2'] = this.name2;
//     data['Fkimg'] = this.fkimg;
//
//
//     return data;
//   }
// }
// class API3 {
//   String? reDepositAmt;
//   String? textZpdc1Kunnr;
//
//
//   API3(
//       {
//         this.reDepositAmt,
//         this.textZpdc1Kunnr,
//        });
//
//   API3.fromJson(Map<String, dynamic> json) {
//
//
//     reDepositAmt = json['ReDepositAmt'];
//     textZpdc1Kunnr = json['TextZpdc1Kunnr'];
//
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//
//     data['ReDepositAmt'] = this.reDepositAmt;
//     data['TextZpdc1Kunnr'] = this.textZpdc1Kunnr;
//
//     return data;
//   }
// }
