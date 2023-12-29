import 'package:demoproject/provider/results.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CustomerDealer extends StatefulWidget {
  const CustomerDealer({super.key});

  @override
  State<CustomerDealer> createState() => _CustomerDealerState();
}

class _CustomerDealerState extends State<CustomerDealer> {
  int? month1 = 01;
  var format = NumberFormat.currency(locale: 'HI');

  @override
  void initState() {
    super.initState();
    Provider.of<API1Provider>(context, listen: false).getDataAPI1(month1);
    // Provider.of<API1Provider>(context, listen: false).getDataAPI2(12);
    // Provider.of<API1Provider>(context, listen: false).getDataAPI3(12);
  }

  @override
  Widget build(BuildContext context) {
    List<String> months = ['January','February', 'March', 'April', 'May','June','July','August','September','October','November', 'December',];
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


                    if (selectedMonth == "January") {
                      int? newValue2 = 01;
                      month1 = newValue2;
                      print("success");
                      print(newValue1);
                      if(value.getDataAPI1(month1)!= null){
                      value.getDataAPI1(month1);}
                    }
                    if (selectedMonth == "February") {
                      int? newValue2 = 02;
                      month1 = newValue2;
                      print("success");
                      print(newValue1);
                      if(value.getDataAPI1(month1)!= null){
                        value.getDataAPI1(month1);}
                    }
                    if (selectedMonth == "March") {
                      int? newValue2 = 03;
                      month1 = newValue2;
                      print("success");
                      print(newValue1);
                      if(value.getDataAPI1(month1)!= null){
                        value.getDataAPI1(month1);}
                    }
                    if (selectedMonth == "April") {
                      int? newValue2 = 04;
                      month1 = newValue2;
                      print("success");
                      print(newValue1);
                      if(value.getDataAPI1(month1)!= null){
                        value.getDataAPI1(month1);}
                    }
                    if (selectedMonth == "May") {
                      int? newValue2 = 05;
                      month1 = newValue2;
                      print("success");
                      print(newValue1);
                      if(value.getDataAPI1(month1)!= null){
                        value.getDataAPI1(month1);}
                    }
                    if (selectedMonth == "June") {
                      int? newValue2 = 06;
                      month1 = newValue2;
                      print("success");
                      print(newValue1);
                      if(value.getDataAPI1(month1)!= null){
                        value.getDataAPI1(month1);}
                    }
                    if (selectedMonth == "July") {
                      int? newValue2 = 07;
                      month1 = newValue2;
                      print("success");
                      print(newValue1);

                        value.getDataAPI1(month1);
                    }
                    if (selectedMonth == "August") {
                      int? newValue2 = 08;
                      month1 = newValue2;
                      print("success");
                      print(newValue1);

                        value.getDataAPI1(month1);

                    }
                    if (selectedMonth == "September") {
                      int? newValue2 = 09;
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


                    }
                    if (selectedMonth == "November") {
                      int? newValue2 = 11;
                      month1 = newValue2;

                        value.getDataAPI1(month1);
                    }

                    if (selectedMonth == "December") {
                      int? newValue2 = 12;
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

                    var api11 = value.api1[index];

                    // var api2 = value.api2[index];

                    print(api11.fkimg);

                    // print(api2.name2);

                    // var api3 = value.api3[index];

                    return Table(
                      border: TableBorder.all(),
                      children: [

                        // TableRow(children: [Text("Details"), Text("Dealer")]),
                        TableRow(children: [
                            if(api11.SoName1!="0")
                            Text("${api11.SoName1}")
                            else if (api11.knName1!= "0")
                              Text("${api11.knName1}")
                            else if(api11.textZpdc1Kunnr!= "0")
                              Text("${api11.textZpdc1Kunnr}"),


                          Column(
                            children: [

                              Row(
                                children: [
                                  Text("Collection Data PKR "),
                                  Spacer(),
                                  Text(
                                      "${api11.colTrgtPkr}")
                                ],
                              ),

                              Row(
                                children: [
                                  Text("Achive Plan PKR"),
                                  Spacer(),
                                  Text("${api11.reDepositAmt}")
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
                                  Spacer(),
                                  Text("${api11.fkimg}"),
                                ],
                              )

                            ],
                          ),
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
