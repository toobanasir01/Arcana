class DropDown1 {
  String? salesTrgtMtn;
  String? colTrgtPkr;

  DropDown1(
      {
        this.salesTrgtMtn,
        this.colTrgtPkr});

  DropDown1.fromJson(Map<String, dynamic> json) {

    salesTrgtMtn = json['SalesTrgtMtn'];
    colTrgtPkr = json['ColTrgtPkr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['SalesTrgtMtn'] = this.salesTrgtMtn;
    data['ColTrgtPkr'] = this.colTrgtPkr;
    return data;
  }
}