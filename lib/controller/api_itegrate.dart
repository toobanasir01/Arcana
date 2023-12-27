import 'dart:convert';

import 'package:demoproject/model/model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart'as http;

import '../model/dropdown_model.dart';

class DemoApi {
  Dio dio = Dio();


  Future<List<Results>> getData() async {

      // final response = await http.get(Uri.parse("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/ZSD_SP_PROFILE_SRV/ZHCM_EMP_STRSet?\$filter=AppNumb eq '3193314099'\&\$format=json"), headers:{"Accept-Encoding":"Chunked",});
      // // var url =  Uri.parse("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/ZSD_SP_PROFILE_SRV/ZHCM_EMP_STRSet?\$filter=AppNumb eq '3193314099'\&\$format=json",headers:{"Accept-Encoding":"Chunked",},);

      Response response =await dio.get("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/ZSD_SP_PROFILE_SRV/ZHCM_EMP_STRSet?\$filter=AppNumb eq '3193314099'\&\$format=json", options: Options(headers: {"Accept-Encoding":"Chunked",}) );
    if (response.statusCode == 200) {

        Map<String,dynamic> body = response.data;
        Map<String,dynamic> c = body["d"];
        List<dynamic> b = c["results"];
        print(b);
        List<Results> results =
        b.map((dynamic item) => Results.fromJson(item)).toList();


      return results;


    }
    else {
      throw Error;
    }
  }
}

class DropDown {
  Dio dio = Dio();


  Future<List<DropDown1>> getDataDropdown(int year,int day) async {

    // final response = await http.get(Uri.parse("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/ZSD_SP_PROFILE_SRV/ZHCM_EMP_STRSet?\$filter=AppNumb eq '3193314099'\&\$format=json"), headers:{"Accept-Encoding":"Chunked",});
    // // var url =  Uri.parse("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/ZSD_SP_PROFILE_SRV/ZHCM_EMP_STRSet?\$filter=AppNumb eq '3193314099'\&\$format=json",headers:{"Accept-Encoding":"Chunked",},);

    Response response =await dio.get("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/ZSD_SP_TRGT_SRV/ZSPER_CUST_TRGTSet?\$filter=TelNumb eq '3193314099' and Zmonth eq '$year$day'&\&\$format=json", options: Options(headers: {"Accept-Encoding":"Chunked",}) );
    if (response.statusCode == 200) {

      Map<String,dynamic> body = response.data;
      Map<String,dynamic> c = body["d"];
      List<dynamic> b = c["results"];
      // print(b);
      List<DropDown1> results =
      b.map((dynamic item) => DropDown1.fromJson(item)).toList();


      return results;


    }
    else {
      throw Error;
    }
  }
}




// void main() {
//   DropDown a = DropDown();
//   a.getDataDropdown(2023,12);
//
// }
