import 'package:demoproject/controller/api_itegrate.dart';
import 'package:demoproject/screen/dropdown.dart';
import 'package:flutter/material.dart';

import '../model/dropdown_model.dart';
import '../model/model.dart';
enum FilterList { dec, jan , fab }

class ResultProvider extends ChangeNotifier{
  DemoApi _data= DemoApi();

  List<Results> _result=[];

  List<Results> get result => _result;

  Future<void> getresult() async{

    final respose =  await _data.getData();
    _result = respose;
    notifyListeners();
  }



}

class DropDownProvider extends ChangeNotifier{
  DropDown _data= DropDown();

  List<DropDown1> _dropdown=[];

  List<DropDown1> get dropdown => _dropdown;

  Future<void> getresultdropdown(year1,day1) async{

    final response =  await _data.getDataDropdown(year1,day1);
    _dropdown = response;
    notifyListeners();
  }


  //
  // addItem(int item){
  //   if(item == "2023"){
  //
  //      getresultdropdown(2023,12);
  //
  //   }
  // }
}

class API1Provider extends ChangeNotifier{
  CustomerDealerAPI1 _data = CustomerDealerAPI1();

  // List<dynamic> _allapi = [];
  // List<dynamic> get allapi => _allapi;

  List<API1> _api1 =[];
  // List<API2> _api2 =[];
  // List<API3> _api3 =[];


  List<API1> get api1 => _api1;

  // List<API2> get api2 => _api2;
  // List<API3> get api3 => _api3;

  Future<void> getDataAPI1(month) async{

    final respose_api1 = await _data.getDataALLAPI(month);
    _api1 = respose_api1;
    notifyListeners();


  }


  // Future<void> getDataAPI2(month) async{
  //   final respose_api2 = await _data.getDataAPI2(month);
  //   _api2 = respose_api2;
  //   notifyListeners();
  //
  // }
  // Future<void> getDataAPI3(month) async{
  //   final respose_api3 = await _data.getDataAPI3(month);
  //   _api3 = respose_api3;
  //   notifyListeners();
  //
  // }



}

