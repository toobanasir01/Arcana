import 'package:demoproject/provider/results.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class DropDown_Menu extends StatefulWidget {
  const DropDown_Menu({super.key});

  @override
  State<DropDown_Menu> createState() => _DropDownMenuState();
}
enum months {
  January('January'),Febuary('Febuary');
  const months (this.month);
  final String month;

}

class _DropDownMenuState extends State<DropDown_Menu> {

  int? month1=01;
  int? year;

  @override
  void initState() {
    super.initState();
    Provider.of<DropDownProvider>(context, listen: false).getresultdropdown(year, month1);



    // dataget();
  }

  @override
  Widget build(BuildContext context) {

    List<int> years = List.generate(12, (index) => 2030 - index);
    List<String> months = [
      'January',
      'February',
      'March',
      'April',
      'December'

    ];


    int selectedYear = DateTime.now().year;
    String selectedMonth = 'January';

    return Consumer<DropDownProvider>(
      builder: (_,value,__){

        return Scaffold(
          appBar: AppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [



                    Container(
                      width:200,

                      child: DropdownButton<int>(
                        value: selectedYear,
                        onChanged: (int? newValue) {

                            selectedYear = newValue!;

                            year=selectedYear;
                            print(year);
                            print("formmonth ${month1}");
                            value.getresultdropdown(year,month1);








                        },
                        items: years.map((int year) {
                          return DropdownMenuItem<int>(
                            value: year,
                            child: Text('$year'),
                          );
                        }).toList(),
                      ),
                    ),

                    DropdownButton<String>(
                      value: selectedMonth,
                      onChanged: (String? newValue1) {


                          selectedMonth = newValue1!;
                          // print(selectedMonth);

                            if (selectedMonth=="December") {
                              int? newValue2 = 12;
                              month1 = newValue2;
                              print("success");
                              print(newValue1);
                              value.getresultdropdown(year,month1);

                            }
                          if (selectedMonth=="January") {
                            int? newValue2 = 01;
                            month1 = newValue2;
                            // month = newValue2;
                            print("success");
                            print(newValue1);
                            value.getresultdropdown(year,month1);

                          }

                          if (selectedMonth=="February") {
                            int? newValue2 = 02;
                            month1 = newValue2;
                            print("success");
                            print(newValue1);
                            value.getresultdropdown(year,month1);
                          }

                          if (selectedMonth=="March") {
                            int? newValue2 = 03;
                            month1 = newValue2;

                            print("success");
                            print(newValue1);
                            value.getresultdropdown(year,month1);
                          }
                          if (selectedMonth=="April") {
                            int? newValue2 = 04;
                            month1 = newValue2;

                            print("success");
                            print(newValue1);
                            value.getresultdropdown(year,month1);
                          }



                      },
                      items: months.map((String month) {
                        return DropdownMenuItem<String>(
                          value: month,
                          child: Text(month),


                        );
                      }).toList(),),







                  ],
                ),
              ),


              Expanded(
                child: ListView.builder(itemBuilder: (context,index){

                  final c = value.dropdown[index];
                  return Column(
                    children: [
                      Container(child: Text("${c.salesTrgtMtn}", style: TextStyle(fontSize: 20),)),

                      Container(child: Text("${c.colTrgtPkr}", style: TextStyle(fontSize: 20),)),
                    ],
                  );

                }
                  ,itemCount: value.dropdown.length,
                ),
              )
            ],

          ),

        );
      },

    );
  }
}
