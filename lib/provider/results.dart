import 'package:demoproject/controller/api_itegrate.dart';
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