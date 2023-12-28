import 'package:demoproject/provider/results.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomerDealer extends StatefulWidget {
  const CustomerDealer({super.key});

  @override
  State<CustomerDealer> createState() => _CustomerDealerState();
}

class _CustomerDealerState extends State<CustomerDealer> {
  int? month1 = 01;

  @override
  void initState() {
    super.initState();
    Provider.of<API1Provider>(context, listen: false).getDataAPI1(month1);
    Provider.of<API1Provider>(context, listen: false).getDataAPI2(12);
    Provider.of<API1Provider>(context, listen: false).getDataAPI3(12);
  }

  @override
  Widget build(BuildContext context) {
    List<String> months = ['January', 'October', 'March', 'April', 'December'];
    String selectedMonth = 'January';
    return Consumer<API1Provider>(
      builder: (_, value, __) {
        return Scaffold(
            body: SafeArea(
          child: Column(
            children: [
              Container(
                width: 100,
                child: DropdownButton<String>(
                  value: selectedMonth,
                  onChanged: (String? newValue1) {
                    selectedMonth = newValue1!;
                    // print(selectedMonth);

                    if (selectedMonth == "December") {
                      int? newValue2 = 12;
                      month1 = newValue2;
                      print("success");
                      print(newValue1);
                      value.getDataAPI1(month1);
                    }
                    if (selectedMonth == "January") {
                      int? newValue2 = 01;
                      month1 = newValue2;
                      print("success");
                      print(newValue1);
                      value.getDataAPI1(month1);
                    }
                    if (selectedMonth == "October") {
                      int? newValue2 = 10;
                      month1 = newValue2;
                      print("success");
                      print(newValue1);
                      value.getDataAPI1(month1);
                      value.getDataAPI2(month1);
                      value.getDataAPI3(month1);
                    }
                    if (selectedMonth == "March") {
                      int? newValue2 = 03;
                      month1 = newValue2;
                      print("success");
                      print(newValue1);
                      value.getDataAPI1(month1);
                    }
                  },
                  items: months.map((String month) {
                    return DropdownMenuItem<String>(
                      value: month,
                      child: Text(month),
                    );
                  }).toList(),
                ),
              ),
              Expanded(

                child: ListView.builder(
                  itemBuilder: (context, index) {
                    var api11 = value.api2[index];

                    // var api2 = value.api2[index];

                    print(api11.name2);
                    // print(api2.name2);

                    // var api3 = value.api3[index];

                    return Table(
                      border: TableBorder.all(),
                      children: [
                        TableRow(children: [Text("Details"), Text("Dealer")]),
                        TableRow(children: [
                          Text("${api11.name2}"),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text("Collection Data PKR "),
                                  Spacer(),
                                  Text(
                                      "")
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Achive Plan PKR"),
                                  Text("data")
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Target MTN"),
                                  Spacer(),
                                  Text("${api11.fkimg}")
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Acheive MTN"),
                                  Text("data"),
                                ],
                              )
                            ],
                          )
                        ]),
                      ],
                    );

                  },
                  itemCount: value.api2.length,
                ),
              ),
              Expanded(

                child: ListView.builder(
                  itemBuilder: (context, index) {
                    var api11 = value.api1[index];

                    // var api2 = value.api2[index];

                    print(api11.knName1);
                    // print(api2.name2);

                    // var api3 = value.api3[index];

                    return Table(
                      border: TableBorder.all(),
                      children: [
                        TableRow(children: [Text("Details"), Text("Dealer")]),
                        TableRow(children: [
                          Text("${api11.knName1}"),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text("Collection Data PKR "),
                                  Spacer(),
                                  Text(
                                      "${api11.colTrgtPkr.toString().split(".")[0].substring(0, 7)}")
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Achive Plan PKR"),
                                  Text("data")
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Target MTN"),
                                  Spacer(),
                                  Text("${api11.salesTrgtMtn}")
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Acheive MTN"),
                                  Text("data"),
                                ],
                              )
                            ],
                          )
                        ]),
                      ],
                    );

                  },
                  itemCount: value.api1.length,
                ),
              ),
            ],
          ),
        ));
      },
    );
  }
}
