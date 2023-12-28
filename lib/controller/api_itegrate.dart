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

class CustomerDealerAPI1{
  Dio dio = Dio();

  Future<List<API1>>  getData(int month) async{
    Response response = await dio.get("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/ZSD_CUSTOMER_TRGT_SRV/ZSPER_CUST_TRGTSet?\$filter=TelNumb eq '3193314099' and Zmonth eq '2023$month'&\&\$format=json",options: Options(headers: {"Accept-Encoding": "Chunked",}));

    if(response.statusCode == 200 ){

      Map<String,dynamic> body = response.data;

      // print(body);
      Map<String,dynamic> c = body["d"];



      List<dynamic> b = c["results"];
      print(b);
      List<API1> api_1 = b.map((dynamic item)=> API1.fromJson(item)).toList();

      return api_1;
    }
    else {
      throw Error;
    }


  }

  Future<List<API2>>  getDataAPI2(int month) async{
    Response response = await dio.get("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/ZSD_VF05_REPORT_CUST_MAPP_SRV/ZSD_VF05_INTSet?\$filter=AppNumb eq '3193314099' and Zmonth eq '2023$month'&\$format=json",options: Options(headers: {"Accept-Encoding": "Chunked",}));

    if(response.statusCode == 200){

      Map<String,dynamic> body = response.data;
      // print(body);
      Map<String,dynamic> c = body["d"];
      List<dynamic> b = c["results"];
      print(b);
      List<API2> api_2 = b.map((dynamic item)=> API2.fromJson(item)).toList();

      return api_2;
    }
    else {
      throw Error;
    }

  }
  Future<List<API3>>  getDataAPI3(int month) async{
    Response response = await dio.get("https://sap.aghasteel.com.pk:8005/sap/opu/odata/sap/zsd_col_cust_api_srv/ZSD_ZFICOL_SP_INTSet?\$filter=AppNumb eq '3193314099' and Zmonth eq '2023$month'&\$format=json",options: Options(headers: {"Accept-Encoding": "Chunked",}));

    if(response.statusCode == 200){

      Map<String,dynamic> body = response.data;
      // print(body);
      Map<String,dynamic> c = body["d"];
      List<dynamic> b = c["results"];
      print(b);
      List<API3> api_3 = b.map((dynamic item)=> API3.fromJson(item)).toList();

      return api_3;
    }
    else {
      throw Error;
    }

  }


}




void main() {
  CustomerDealerAPI1 a = CustomerDealerAPI1();
  a.getData(12);



}
