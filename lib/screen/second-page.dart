


import 'package:demoproject/model/model.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:demoproject/provider/results.dart';



class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

   // List<Results>? a = [];
   // DemoApi demoApi = DemoApi();
   // dataget() async{
   //
   //   a = await demoApi.getData();
   //
   //   // setState(() {
   //   //
   //   // });
   //
   // }
   @override
   void initState() {
     super.initState();
     Provider.of<ResultProvider>(context, listen: false).getresult();

     // dataget();
   }
  //
  // getDataFromDemoApi() async{
  //   b = await dem.getData();
  //   return b;
  // }
  //   List<dynamic> result = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<ResultProvider>(
        builder: (_,value,__) {
          return ListView.builder(
              itemBuilder: (context,index){

                 final b = value.result[index];
                return Column(
                  children: [

                    Container(
                        child: Text("${b.ename}",style: TextStyle(fontSize: 30),)
                    ),
                    Container(
                        child: Text("${b.telnr}",style: TextStyle(fontSize: 30),)
                    ),
                    Container(
                        child: Text("${(b.stras)}",style: TextStyle(fontSize: 30),)
                    ),

                  ],

                );
              },
              itemCount:value.result.length);

        },


      ),






    );

  }

}
