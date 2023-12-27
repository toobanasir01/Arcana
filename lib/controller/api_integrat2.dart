// import 'dart:convert';
//
// import 'package:demoproject/model/model.dart';
// import 'package:dio/dio.dart';
// import 'package:http/http.dart'as http;
//
// class DemoApi {
//   Dio dio = Dio();
//
//
//   Future<List<Results>> getData() async {
//
//     // final response = await http.get(Uri.parse("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/ZSD_SP_PROFILE_SRV/ZHCM_EMP_STRSet?\$filter=AppNumb eq '3193314099'\&\$format=json"), headers:{"Accept-Encoding":"Chunked",});
//     // // var url =  Uri.parse("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/ZSD_SP_PROFILE_SRV/ZHCM_EMP_STRSet?\$filter=AppNumb eq '3193314099'\&\$format=json",headers:{"Accept-Encoding":"Chunked",},);
//
//     Response response =await dio.get("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/ZSD_SP_PROFILE_SRV/ZHCM_EMP_STRSet?\$filter=AppNumb eq '3193314099'\&\$format=json", options: Options(headers: {"Accept-Encoding":"Chunked",}) );
//     if (response.statusCode == 200) {
//
//       var body = response.data;
//       print(body);
//       List<Results>  result = [];
//       for (var userData in body['data']) {
//         result.add(Results.fromJson(userData));
//       }
//
//
//       // for(var body in response.body["results"]) {
//       //   Results model = Results.fromJson(jsonDecode(response.data));
//
//
//
//       // }
//       return result;
//       // List<dynamic> a = model.ename;
//       // print(a);
//
//       // Map<String, dynamic> body = a["d"];
//
//       // List<dynamic> c = body["results"] ?? null;
//
//
//       // List<Results> result =
//       //    c.map((dynamic item) => Results.fromJson(item)).toList();
//       //  print(result);
//
//     }
//     else {
//       throw Error;
//     }
//   }
// }
// // class DemoApi {
// //   Dio dio = Dio();
// //   Future<Results> getData() async{
// //   Response response =await dio.get("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/ZSD_SP_PROFILE_SRV/ZHCM_EMP_STRSet?filter=AppNumb eq '3193314099'&\$format=json");
// //   if(response.statusCode ==200){
// //
// //
// //    Results simple = Results.fromJson(jsonDecode(response.data));
// //     Map<String,dynamic> a = response.data;
// //     print(simple);
// //
// //
// //     return response.data;
// //   }
// //   else {
// //     throw Error();
// //   }
// // }
// //
// // }
//
//
// // class DemoApi{
// //   Future<Results> getData() async{
// //     try{
// //       var url = Uri.parse("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/ZSD_SP_PROFILE_SRV/ZHCM_EMP_STRSet?\$filter=AppNumb eq '3193314099'&\$format=json");
// //       var response = await http.get(url);
// //
// //       if(response.statusCode ==200){
// //         print(response.body);
// //
// //       Results model = Results.fromJson(jsonDecode(response.body));
// //
// // //       Map<String, dynamic> body = a["d"];
// //
// //       print(model.ename);
// //       return model;
// //       }
// //       else{
// //         print("Error");
// //       }
// //     }
// //     catch(e){
// //
// //     }
// //
// //
// //   }
// // }
//
// void main() {
//   DemoApi a = DemoApi();
//   a.getData();
//
// }


// DropdownButton(
//     // value: selectedMonth,
//     items: [
//       DropdownMenuItem<String>(
//         value: "Jan",
//         child: Text("2023"),
//       ),
//       DropdownMenuItem<String>(
//         value: "Feb",
//         child: Text("2024"),
//
//       )
//     ],
//     onChanged: (item){
//       // if(item == "dec"){
//       //
//       // }
//       // print(item);
//
//
//     }),
//
//
// DropdownButton(
//     items: [
//     DropdownMenuItem<String>(
//
//       value: "Jan",
//       child: Text("January"),
//     ),
//       DropdownMenuItem<String>(
//         value: selectedMonth,
//         child: Text("Febuary"),
//       )
// ],
//     onChanged: (item){
//       setState(() {
//         selectedMonth=item!;
//       });
//
//
//
// }),

// DropdownButton<String>(
//   value: dropdownvalue,
//   items:  [
//     const DropdownMenuItem<String>(
//       value: "One",
//       child: Text("January"),
//     ),
//     DropdownMenuItem<String>(
//       value: "Two",
//       child: Text("Febuary"),
//     ),
//     DropdownMenuItem<String>(
//       value: "5",
//       child: Text("December"),
//     )
//   ],
//   onChanged: (newvalue){
//
//     setState(() {
//       dropdownvalue = newvalue!;
//
//     });
//
//
//
//   },

// ),
// Container(
//     child: Text("${dropdownvalue}")
// ),


//  year=selectedYear;
// print(selectedYear);
//
// value.getresultdropdown(year, month);
// print(newValue);
//
//   value.getresultdropdown(newValue, 12);